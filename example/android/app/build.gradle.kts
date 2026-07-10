plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

// The libgodot plugin bundles a prebuilt godot-lib*.aar (see android/build.gradle.kts in the
// plugin), but Android library modules can't transitively expose a local/flatDir AAR dependency
// to the app that consumes them (https://developer.android.com/studio/projects/android-library#psd-limitations),
// so the app itself needs its own (real) dependency on the same AAR.
val godotSourceDir = file("${projectDir}/../../../third_party/godot")
val godotAarDir = file("$godotSourceDir/platform/android/java/lib/build/outputs/aar")
val godotAar: File = godotAarDir.listFiles { f -> f.name.startsWith("godot-lib.") && f.name.endsWith(".aar") }?.firstOrNull()
    ?: throw GradleException(
        "No godot-lib*.aar found in $godotAarDir. Build it first with:\n" +
            "  cd $godotSourceDir/platform/android/java && ./gradlew :lib:assembleTemplateDebug"
    )

android {
    namespace = "com.example.libgodot_example"
    compileSdk = flutter.compileSdkVersion
    // Godot's engine build (see third_party/godot/platform/android/detect.py#get_ndk_version())
    // pins a newer NDK than Flutter's own default; use the higher of the two.
    ndkVersion = "29.0.14206865"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_17.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.example.libgodot_example"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        // The libgodot plugin's offscreen display driver requires API 26+ (AHardwareBuffer),
        // higher than Flutter's own default minSdkVersion.
        minSdk = maxOf(flutter.minSdkVersion, 26)
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        release {
            // TODO: Add your own signing config for the release build.
            // Signing with the debug keys for now, so `flutter run --release` works.
            signingConfig = signingConfigs.getByName("debug")
        }
    }
}

flutter {
    source = "../.."
}

repositories {
    flatDir { dirs(godotAar.parentFile) }
}

dependencies {
    implementation(group = "", name = godotAar.nameWithoutExtension, ext = "aar")
}
