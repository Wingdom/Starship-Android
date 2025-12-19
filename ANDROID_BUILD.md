# Starship Android Build Instructions

## Prerequisites

Before building for Android, ensure you have:

1. **Android SDK** installed (API Level 31+)
2. **Android NDK** version 26.0.10792818 (or compatible)
3. **CMake** version 3.16+ (3.31.5 recommended)
4. **Java JDK** version 11 or higher
5. **Star Fox 64 ROM** (baserom.z64) for asset extraction

## Step-by-Step Build Process

### Step 1: Build the PC Version and Generate Assets

First, you need to build the PC version and generate the O2R asset files.

```bash
# Navigate to the Starship root directory
cd Starship

# Configure CMake (if not already done)
cmake -B build -S .

# Build the PC version
cmake --build build

# Extract assets from your Star Fox 64 ROM
# Make sure baserom.z64 is in the Starship root directory
cmake --build build --target ExtractAssets

# Generate the port O2R file
cmake --build build --target GeneratePortO2R
```

After this completes, you should have:
- `sf64.o2r` - Original game assets
- `starship.o2r` - Port-specific assets

### Step 2: Copy O2R Files to Android Assets

```bash
# Copy the starship.o2r file to Android assets directory
cp starship.o2r Android/app/src/main/assets/

# Verify it was copied
ls -lh Android/app/src/main/assets/starship.o2r
```

### Step 3: Set Environment Variables (if needed)

```bash
# Set Android SDK path (adjust to your installation)
export ANDROID_SDK_ROOT=$HOME/Android/Sdk

# Set Android NDK path (if not auto-detected)
export ANDROID_NDK_ROOT=$ANDROID_SDK_ROOT/ndk/26.0.10792818

# Add SDK tools to PATH
export PATH=$ANDROID_SDK_ROOT/platform-tools:$PATH
```

### Step 4: Build the Android APK

```bash
# Navigate to the Android directory
cd Android

# Make gradlew executable (if needed)
chmod +x gradlew

# Build debug APK (includes all architectures)
./gradlew assembleDebug

# OR build release APK (arm64-v8a only, smaller size)
./gradlew assembleRelease
```

### Step 5: Locate the Built APK

After a successful build, the APK will be located at:

```bash
# Debug APK
Android/app/build/outputs/apk/debug/starship_debug_v9.0.2.apk

# Release APK
Android/app/build/outputs/apk/release/starship_release_v9.0.2.apk
```

### Step 6: Install on Android Device

**Option A: Using ADB (command line)**

```bash
# Make sure your device is connected and USB debugging is enabled
adb devices

# Install the APK
adb install -r Android/app/build/outputs/apk/debug/starship_debug_v9.0.2.apk
```

**Option B: Manual Installation**

1. Copy the APK to your device
2. Open the APK file on your device
3. Allow installation from unknown sources if prompted
4. Install and run

### Step 7: First Run Setup

When you run Starship for the first time on Android:

1. A setup dialog will appear saying "Some required files are missing"
2. Press **OK** to begin setup (takes ~1 minute)
3. The app will copy assets to app-specific storage (typically `/storage/emulated/0/Android/data/com.wingdom.starship/files/`)
4. Once complete, the game should start

**Note:** The app uses app-specific external storage which does not require special storage permissions and persists between app updates.

## Troubleshooting

### Build Errors

**CMake can't find NDK:**
```bash
# Specify NDK path in local.properties
echo "ndk.dir=$ANDROID_NDK_ROOT" >> Android/local.properties
```

**Missing starship.o2r:**
```bash
# Make sure you generated and copied the O2R file
ls -lh starship.o2r
cp starship.o2r Android/app/src/main/assets/
```

**Gradle version issues:**
```bash
# Update Gradle wrapper
cd Android
./gradlew wrapper --gradle-version=8.10.2
```

### Runtime Errors

**App crashes on startup:**
- Check logcat: `adb logcat | grep Starship`
- Ensure starship.o2r was copied to app storage after setup
- Check app storage location: `adb shell ls /storage/emulated/0/Android/data/com.wingdom.starship/files/`

**Library not found errors:**
- Check that `libStarship.so` was built: `unzip -l app/build/outputs/apk/debug/starship_debug_v9.0.2.apk | grep libStarship`
- Verify architecture matches your device: `adb shell getprop ro.product.cpu.abi`

## Clean Build

If you need to start fresh:

```bash
cd Android

# Clean Gradle build
./gradlew clean

# Clean CMake build
rm -rf .cxx/
rm -rf app/.cxx/
rm -rf app/build/

# Rebuild
./gradlew assembleDebug
```

## Build Configurations

### Debug Build
- **Architectures**: arm64-v8a, armeabi-v7a, x86, x86_64
- **Size**: ~100-150 MB (larger, includes all architectures)
- **Use case**: Testing on various devices/emulators
- **Debuggable**: Yes

### Release Build
- **Architecture**: arm64-v8a only
- **Size**: ~30-50 MB (smaller, single architecture)
- **Use case**: Distribution to users
- **Debuggable**: No (but still uses debug signing)
- **Note**: For production, configure proper signing in `build.gradle`

## Additional Notes

- **Storage**: The app uses app-specific external storage at `/storage/emulated/0/Android/data/com.wingdom.starship/files/`
  - This location does not require special storage permissions
  - Data persists between app updates but is removed when the app is uninstalled
- **Save files**: Located at `/storage/emulated/0/Android/data/com.wingdom.starship/files/default.sav`
- **Mods**: Place mods in `/storage/emulated/0/Android/data/com.wingdom.starship/files/mods/`
- **Configuration**: Settings stored in `/storage/emulated/0/Android/data/com.wingdom.starship/files/starship.cfg.json`
- **Minimum Android**: Android 7.0 (API 24)
- **Target Android**: Android 13 (API 33)

## Quick Build Commands Summary

```bash
# Full build from scratch
cd Starship
cmake -B build -S . && cmake --build build --target GeneratePortO2R
cp starship.o2r Android/app/src/main/assets/
cd Android
./gradlew assembleDebug
adb install -r app/build/outputs/apk/debug/starship_debug_v9.0.2.apk
```
