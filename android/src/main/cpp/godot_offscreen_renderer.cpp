// Bridges the AHardwareBuffer frames produced by Godot's "offscreen" Android display driver
// (see third_party/godot/platform/android/display_server_android_offscreen.h, delivered to Kotlin
// via GodotHost.onOffscreenFrameAvailable()) into the android.view.Surface backing a Flutter
// TextureRegistry.SurfaceProducer.
//
// Flutter's Android texture model is push-based: unlike the Linux plugin (which hands Flutter a
// GL texture name and lets FlTextureGL::populate() import the latest frame on demand), here we
// must own an EGL context and actively render into a Surface whenever a new frame arrives. Each
// frame is imported as an EGLImage (via the AHardwareBuffer/EGL_ANDROID_get_native_client_buffer
// extensions) and blitted with a trivial external-OES shader, since AHardwareBuffer content isn't
// guaranteed to be sampleable as a normal 2D texture.

#include <EGL/egl.h>
#include <EGL/eglext.h>
#include <GLES2/gl2.h>
#include <GLES2/gl2ext.h>
#include <android/hardware_buffer.h>
#include <android/hardware_buffer_jni.h>
#include <android/log.h>
#include <android/native_window.h>
#include <android/native_window_jni.h>
#include <jni.h>

#include <cstring>

#define LOG_TAG "GodotOffscreenRenderer"
#define LOGE(...) __android_log_print(ANDROID_LOG_ERROR, LOG_TAG, __VA_ARGS__)

namespace {

using PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC = EGLClientBuffer (*)(const AHardwareBuffer *);
using PFNEGLCREATEIMAGEKHRPROC = EGLImageKHR (*)(EGLDisplay, EGLContext, EGLenum, EGLClientBuffer, const EGLint *);
using PFNEGLDESTROYIMAGEKHRPROC = EGLBoolean (*)(EGLDisplay, EGLImageKHR);
using PFNGLEGLIMAGETARGETTEXTURE2DOESPROC = void (*)(GLenum, GLeglImageOES);

const char *kVertexShader =
		"attribute vec2 a_position;\n"
		"varying vec2 v_texcoord;\n"
		"void main() {\n"
		"  v_texcoord = a_position * 0.5 + 0.5;\n"
		"  gl_Position = vec4(a_position, 0.0, 1.0);\n"
		"}\n";

// Frames are delivered with (0,0) at the top-left (see GodotOffscreenFrame), but GL's window
// coordinate origin is bottom-left, so the sampled v-coordinate is flipped here.
const char *kFragmentShader =
		"#extension GL_OES_EGL_image_external : require\n"
		"precision mediump float;\n"
		"varying vec2 v_texcoord;\n"
		"uniform samplerExternalOES u_texture;\n"
		"void main() {\n"
		"  gl_FragColor = texture2D(u_texture, vec2(v_texcoord.x, 1.0 - v_texcoord.y));\n"
		"}\n";

struct GodotOffscreenRenderer {
	EGLDisplay display = EGL_NO_DISPLAY;
	EGLContext context = EGL_NO_CONTEXT;
	EGLConfig config = nullptr;

	// Only valid between nativeSetSurface() and the next nativeClearSurface()/nativeSetSurface().
	ANativeWindow *window = nullptr;
	EGLSurface surface = EGL_NO_SURFACE;

	GLuint program = 0;
	GLuint position_attrib = 0;
	GLuint texture_uniform = 0;
	GLuint external_texture = 0;
	GLuint vbo = 0;

	PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC eglGetNativeClientBufferANDROID_ = nullptr;
	PFNEGLCREATEIMAGEKHRPROC eglCreateImageKHR_ = nullptr;
	PFNEGLDESTROYIMAGEKHRPROC eglDestroyImageKHR_ = nullptr;
	PFNGLEGLIMAGETARGETTEXTURE2DOESPROC glEGLImageTargetTexture2DOES_ = nullptr;
};

GLuint compile_shader(GLenum type, const char *source) {
	GLuint shader = glCreateShader(type);
	glShaderSource(shader, 1, &source, nullptr);
	glCompileShader(shader);
	GLint compiled = 0;
	glGetShaderiv(shader, GL_COMPILE_STATUS, &compiled);
	if (!compiled) {
		char log[512];
		glGetShaderInfoLog(shader, sizeof(log), nullptr, log);
		LOGE("Shader compile failed: %s", log);
		glDeleteShader(shader);
		return 0;
	}
	return shader;
}

bool init_gl_resources(GodotOffscreenRenderer *renderer) {
	GLuint vertex_shader = compile_shader(GL_VERTEX_SHADER, kVertexShader);
	GLuint fragment_shader = compile_shader(GL_FRAGMENT_SHADER, kFragmentShader);
	if (vertex_shader == 0 || fragment_shader == 0) {
		return false;
	}

	renderer->program = glCreateProgram();
	glAttachShader(renderer->program, vertex_shader);
	glAttachShader(renderer->program, fragment_shader);
	glLinkProgram(renderer->program);
	glDeleteShader(vertex_shader);
	glDeleteShader(fragment_shader);

	GLint linked = 0;
	glGetProgramiv(renderer->program, GL_LINK_STATUS, &linked);
	if (!linked) {
		char log[512];
		glGetProgramInfoLog(renderer->program, sizeof(log), nullptr, log);
		LOGE("Program link failed: %s", log);
		return false;
	}

	renderer->position_attrib = glGetAttribLocation(renderer->program, "a_position");
	renderer->texture_uniform = glGetUniformLocation(renderer->program, "u_texture");

	static const GLfloat kFullscreenTriangle[] = {
		-1.0f, -1.0f,
		3.0f, -1.0f,
		-1.0f, 3.0f,
	};
	glGenBuffers(1, &renderer->vbo);
	glBindBuffer(GL_ARRAY_BUFFER, renderer->vbo);
	glBufferData(GL_ARRAY_BUFFER, sizeof(kFullscreenTriangle), kFullscreenTriangle, GL_STATIC_DRAW);

	glGenTextures(1, &renderer->external_texture);
	glBindTexture(GL_TEXTURE_EXTERNAL_OES, renderer->external_texture);
	glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
	glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
	glTexParameteri(GL_TEXTURE_EXTERNAL_OES, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);

	return true;
}

void destroy_surface_locked(GodotOffscreenRenderer *renderer) {
	if (renderer->surface != EGL_NO_SURFACE) {
		eglMakeCurrent(renderer->display, EGL_NO_SURFACE, EGL_NO_SURFACE, renderer->context);
		eglDestroySurface(renderer->display, renderer->surface);
		renderer->surface = EGL_NO_SURFACE;
	}
	if (renderer->window != nullptr) {
		ANativeWindow_release(renderer->window);
		renderer->window = nullptr;
	}
}

} // namespace

extern "C" {

JNIEXPORT jlong JNICALL
Java_com_example_libgodot_GodotOffscreenRenderer_nativeCreate(JNIEnv *env, jobject /* thiz */) {
	auto *renderer = new GodotOffscreenRenderer();

	renderer->display = eglGetDisplay(EGL_DEFAULT_DISPLAY);
	if (renderer->display == EGL_NO_DISPLAY || !eglInitialize(renderer->display, nullptr, nullptr)) {
		LOGE("eglGetDisplay/eglInitialize failed");
		delete renderer;
		return 0;
	}

	const EGLint config_attribs[] = {
		EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
		EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
		EGL_RED_SIZE, 8,
		EGL_GREEN_SIZE, 8,
		EGL_BLUE_SIZE, 8,
		EGL_ALPHA_SIZE, 8,
		EGL_NONE
	};
	EGLint num_configs = 0;
	if (!eglChooseConfig(renderer->display, config_attribs, &renderer->config, 1, &num_configs) || num_configs == 0) {
		LOGE("eglChooseConfig failed");
		delete renderer;
		return 0;
	}

	const EGLint context_attribs[] = { EGL_CONTEXT_CLIENT_VERSION, 2, EGL_NONE };
	renderer->context = eglCreateContext(renderer->display, renderer->config, EGL_NO_CONTEXT, context_attribs);
	if (renderer->context == EGL_NO_CONTEXT) {
		LOGE("eglCreateContext failed");
		delete renderer;
		return 0;
	}

	renderer->eglGetNativeClientBufferANDROID_ = reinterpret_cast<PFNEGLGETNATIVECLIENTBUFFERANDROIDPROC>(
			eglGetProcAddress("eglGetNativeClientBufferANDROID"));
	renderer->eglCreateImageKHR_ = reinterpret_cast<PFNEGLCREATEIMAGEKHRPROC>(
			eglGetProcAddress("eglCreateImageKHR"));
	renderer->eglDestroyImageKHR_ = reinterpret_cast<PFNEGLDESTROYIMAGEKHRPROC>(
			eglGetProcAddress("eglDestroyImageKHR"));
	renderer->glEGLImageTargetTexture2DOES_ = reinterpret_cast<PFNGLEGLIMAGETARGETTEXTURE2DOESPROC>(
			eglGetProcAddress("glEGLImageTargetTexture2DOES"));
	if (!renderer->eglGetNativeClientBufferANDROID_ || !renderer->eglCreateImageKHR_ ||
			!renderer->eglDestroyImageKHR_ || !renderer->glEGLImageTargetTexture2DOES_) {
		LOGE("Required EGL/GL extensions are not available on this device");
		eglDestroyContext(renderer->display, renderer->context);
		delete renderer;
		return 0;
	}

	// A pbuffer-less context can't be made current without *some* surface; a 1x1 pbuffer lets us
	// initialize the GL resources below before the first real Surface is available.
	const EGLint pbuffer_attribs[] = { EGL_WIDTH, 1, EGL_HEIGHT, 1, EGL_NONE };
	EGLSurface pbuffer = eglCreatePbufferSurface(renderer->display, renderer->config, pbuffer_attribs);
	eglMakeCurrent(renderer->display, pbuffer, pbuffer, renderer->context);

	bool ok = init_gl_resources(renderer);

	// Release the context from *this* thread (EGL_NO_SURFACE requires EGL_NO_CONTEXT, not
	// renderer->context here -- passing the latter is invalid and, critically, leaves the
	// context considered "current" on this thread, so a later eglMakeCurrent() from the thread
	// nativeSubmitFrame() actually runs on -- Godot's own render thread, not this one -- would
	// fail with EGL_BAD_ACCESS since a context can only be current on one thread at a time).
	eglMakeCurrent(renderer->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
	eglDestroySurface(renderer->display, pbuffer);

	if (!ok) {
		eglDestroyContext(renderer->display, renderer->context);
		delete renderer;
		return 0;
	}

	return reinterpret_cast<jlong>(renderer);
}

JNIEXPORT void JNICALL
Java_com_example_libgodot_GodotOffscreenRenderer_nativeSetSurface(JNIEnv *env, jobject /* thiz */, jlong handle, jobject surface) {
	auto *renderer = reinterpret_cast<GodotOffscreenRenderer *>(handle);
	if (renderer == nullptr) {
		return;
	}

	destroy_surface_locked(renderer);

	renderer->window = ANativeWindow_fromSurface(env, surface);
	if (renderer->window == nullptr) {
		LOGE("ANativeWindow_fromSurface failed");
		return;
	}

	renderer->surface = eglCreateWindowSurface(renderer->display, renderer->config, renderer->window, nullptr);
	if (renderer->surface == EGL_NO_SURFACE) {
		LOGE("eglCreateWindowSurface failed (0x%x)", eglGetError());
		ANativeWindow_release(renderer->window);
		renderer->window = nullptr;
	}
}

JNIEXPORT void JNICALL
Java_com_example_libgodot_GodotOffscreenRenderer_nativeClearSurface(JNIEnv *env, jobject /* thiz */, jlong handle) {
	auto *renderer = reinterpret_cast<GodotOffscreenRenderer *>(handle);
	if (renderer == nullptr) {
		return;
	}
	destroy_surface_locked(renderer);
}

JNIEXPORT void JNICALL
Java_com_example_libgodot_GodotOffscreenRenderer_nativeSubmitFrame(JNIEnv *env, jobject /* thiz */, jlong handle, jobject hardware_buffer, jint width, jint height) {
	auto *renderer = reinterpret_cast<GodotOffscreenRenderer *>(handle);
	if (renderer == nullptr || renderer->surface == EGL_NO_SURFACE) {
		// No destination surface yet (or the Surface was torn down, e.g. app backgrounded);
		// drop the frame, matching how the other offscreen platforms drop frames the host isn't
		// ready to consume.
		return;
	}

	AHardwareBuffer *buffer = AHardwareBuffer_fromHardwareBuffer(env, hardware_buffer);
	if (buffer == nullptr) {
		LOGE("AHardwareBuffer_fromHardwareBuffer failed");
		return;
	}

	if (eglMakeCurrent(renderer->display, renderer->surface, renderer->surface, renderer->context) != EGL_TRUE) {
		LOGE("eglMakeCurrent failed (0x%x)", eglGetError());
		return;
	}

	EGLClientBuffer client_buffer = renderer->eglGetNativeClientBufferANDROID_(buffer);
	if (client_buffer == nullptr) {
		LOGE("eglGetNativeClientBufferANDROID failed");
		return;
	}

	const EGLint image_attribs[] = { EGL_IMAGE_PRESERVED_KHR, EGL_TRUE, EGL_NONE };
	EGLImageKHR image = renderer->eglCreateImageKHR_(renderer->display, EGL_NO_CONTEXT, EGL_NATIVE_BUFFER_ANDROID, client_buffer, image_attribs);
	if (image == EGL_NO_IMAGE_KHR) {
		LOGE("eglCreateImageKHR failed (0x%x)", eglGetError());
		return;
	}

	glBindTexture(GL_TEXTURE_EXTERNAL_OES, renderer->external_texture);
	renderer->glEGLImageTargetTexture2DOES_(GL_TEXTURE_EXTERNAL_OES, image);

	glViewport(0, 0, width, height);
	glUseProgram(renderer->program);
	glActiveTexture(GL_TEXTURE0);
	glBindTexture(GL_TEXTURE_EXTERNAL_OES, renderer->external_texture);
	glUniform1i(renderer->texture_uniform, 0);

	glBindBuffer(GL_ARRAY_BUFFER, renderer->vbo);
	glEnableVertexAttribArray(renderer->position_attrib);
	glVertexAttribPointer(renderer->position_attrib, 2, GL_FLOAT, GL_FALSE, 0, nullptr);
	glDrawArrays(GL_TRIANGLES, 0, 3);
	glDisableVertexAttribArray(renderer->position_attrib);

	eglSwapBuffers(renderer->display, renderer->surface);

	// Per EGL_KHR_image_base, the image can be destroyed as soon as the GL commands that consume
	// it have been issued; it doesn't need to outlive eglSwapBuffers.
	renderer->eglDestroyImageKHR_(renderer->display, image);
}

JNIEXPORT void JNICALL
Java_com_example_libgodot_GodotOffscreenRenderer_nativeDestroy(JNIEnv *env, jobject /* thiz */, jlong handle) {
	auto *renderer = reinterpret_cast<GodotOffscreenRenderer *>(handle);
	if (renderer == nullptr) {
		return;
	}

	destroy_surface_locked(renderer);

	// Rebind a throwaway pbuffer so the GL delete calls below have a current context.
	const EGLint pbuffer_attribs[] = { EGL_WIDTH, 1, EGL_HEIGHT, 1, EGL_NONE };
	EGLSurface pbuffer = eglCreatePbufferSurface(renderer->display, renderer->config, pbuffer_attribs);
	eglMakeCurrent(renderer->display, pbuffer, pbuffer, renderer->context);

	glDeleteTextures(1, &renderer->external_texture);
	glDeleteBuffers(1, &renderer->vbo);
	glDeleteProgram(renderer->program);

	eglMakeCurrent(renderer->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT);
	eglDestroySurface(renderer->display, pbuffer);
	eglDestroyContext(renderer->display, renderer->context);

	delete renderer;
}

} // extern "C"
