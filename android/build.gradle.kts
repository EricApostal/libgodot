group = "com.example.libgodot"
version = "1.0-SNAPSHOT"

buildscript {
    val kotlinVersion = "2.2.20"
    repositories {
        google()
        mavenCentral()
    }

    dependencies {
        classpath("com.android.tools.build:gradle:8.11.1")
        classpath("org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlinVersion")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

plugins {
    id("com.android.library")
    id("kotlin-android")
}

// Godot Android library, built separately via ./build_godot_android.sh (see that script for why
// this can't just be done as part of this Gradle build). This produces
// godot-lib.template_debug.aar, which bundles both the org.godotengine.godot
// Kotlin/Java classes and the engine's native libraries (see java_godot_lib_jni.cpp/Godot.kt for
// the JNI plumbing this plugin drives). Unlike the Linux plugin, Godot isn't linked into this
// plugin's own native library: Android's OS_Android is coupled to the Java-side GodotJavaWrapper,
// so there is no headless libgodot_create_godot_instance() entry point for this platform (see
// LibgodotPlugin.kt for how the engine is booted instead).
//
// This is only a compileOnly dependency: AGP does not support a library module (this one)
// transitively exposing a local/flatDir AAR dependency to the app module that consumes it (see
// https://developer.android.com/studio/projects/android-library#psd-limitations) -- the app
// module needs its own (real, packaged) dependency on the same AAR. See
// example/android/app/build.gradle.kts for the corresponding `implementation` declaration that
// actually bundles the engine's classes/native libraries/manifest into the app.
val godotSourceDir = file("${projectDir}/../third_party/godot")
val godotAarDir = file("$godotSourceDir/platform/android/java/lib/build/outputs/aar")
val godotAar: File = godotAarDir.listFiles { f -> f.name.startsWith("godot-lib.") && f.name.endsWith(".aar") }?.firstOrNull()
    ?: throw GradleException(
        "No godot-lib*.aar found in $godotAarDir. Build it first with:\n" +
            "  ${projectDir}/build_godot_android.sh"
    )

android {
    namespace = "com.example.libgodot"

    compileSdk = 36
    ndkVersion = "29.0.14206865"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    sourceSets {
        getByName("main") {
            java.srcDirs("src/main/kotlin")
        }
        getByName("test") {
            java.srcDirs("src/test/kotlin")
        }
    }

    defaultConfig {
        // Required by the "offscreen" display driver: AHardwareBuffer_release() and the
        // VK_ANDROID_external_memory_android_hardware_buffer device extension both require API
        // 26+ (see third_party/godot/platform/android/display_server_android_offscreen.cpp).
        minSdk = 26

        externalNativeBuild {
            cmake {
                // The prebuilt godot-lib AAR only ships arm64-v8a native libraries (see
                // `selectedAbis` in third_party/godot/platform/android/java/lib/build.gradle);
                // restrict this plugin's own native library to match.
                abiFilters += "arm64-v8a"
            }
        }
    }

    externalNativeBuild {
        cmake {
            path = file("CMakeLists.txt")
        }
    }

    testOptions {
        unitTests {
            isIncludeAndroidResources = true
            all {
                it.useJUnitPlatform()

                it.outputs.upToDateWhen { false }

                it.testLogging {
                    events("passed", "skipped", "failed", "standardOut", "standardError")
                    showStandardStreams = true
                }
            }
        }
    }
}

repositories {
    flatDir { dirs(godotAar.parentFile) }
}

dependencies {
    compileOnly(group = "", name = godotAar.nameWithoutExtension, ext = "aar")

    testImplementation("org.jetbrains.kotlin:kotlin-test")
    testImplementation("org.mockito:mockito-core:5.0.0")
}
