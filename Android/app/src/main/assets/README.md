# Starship Android Assets

This directory should contain the required Starship O2R file(s) for the Android build.

## Required Files

Place the following file(s) in this directory before building the APK:

- **starship.o2r** - The Starship port O2R archive generated from the PC build

## Generating the O2R File

To generate the `starship.o2r` file:

1. Build the PC version of Starship first
2. Run the `GeneratePortO2R` CMake target:
   ```bash
   cmake --build . --target GeneratePortO2R
   ```
3. Copy the generated `starship.o2r` file to this directory
4. Build the Android APK

## Optional Files

- **gamecontrollerdb.txt** - SDL game controller database (already included)
- **assets/** - Additional asset files (subdirectory)

## Notes

The app will copy this file to app-specific external storage on first run. The files are stored in the app's private directory (typically `/storage/emulated/0/Android/data/com.wingdom.starship/files/`), which:
- Does not require special storage permissions
- Persists between app updates
- Is automatically removed when the app is uninstalled

Save files (`default.sav`), configuration files, and O2R archives are all stored in this location.
