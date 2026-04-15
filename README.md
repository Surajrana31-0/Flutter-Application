# batch_36b

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Flutter Setup Guide — VS Code + Android Studio

Complete step-by-step guide to set up Flutter in VS Code, install Dart,
configure Android Studio, run flutter doctor with zero errors, and
launch your first app on an emulator.

---

## What You Need to Install

- Flutter SDK
- Dart SDK (comes with Flutter)
- Android Studio (for emulator + Android SDK)
- VS Code
- VS Code Extensions: Flutter + Dart

---

## Step 1 — Install Flutter SDK

1. Go to https://docs.flutter.dev/get-started/install
2. Choose **Windows**
3. Download the latest Flutter SDK zip file
4. Extract it to a safe folder — recommended path:

```
C:\flutter
```

> Do NOT put it in `C:\Program Files` — Flutter needs write permission in its folder.

---

## Step 2 — Add Flutter to System PATH

1. Open **Windows Search** → type `Environment Variables`
2. Click **Edit the system environment variables**
3. Click **Environment Variables** button
4. Under **System Variables** → find `Path` → click **Edit**
5. Click **New** → paste this path:

```
C:\flutter\bin
```

6. Click **OK** on all windows
7. Open a new terminal and verify:

```bash
flutter --version
```

You should see something like:

```
Flutter 3.x.x • channel stable
Dart 3.x.x
```

---

## Step 3 — Install Android Studio

1. Go to https://developer.android.com/studio
2. Download and install Android Studio
3. Open Android Studio → go through the **Setup Wizard**
4. Make sure these are installed during setup:
   - Android SDK
   - Android SDK Command-line Tools
   - Android Virtual Device (AVD)

### Install Command-line Tools manually if missing

1. Open Android Studio
2. Go to **Settings** → **Languages & Frameworks** → **Android SDK**
3. Click **SDK Tools** tab
4. Check **Android SDK Command-line Tools (latest)**
5. Click **Apply** → **OK**

---

## Step 4 — Accept Android Licenses

Open terminal and run:

```bash
flutter doctor --android-licenses
```

Type `y` and press Enter for every license prompt until all are accepted.

---

## Step 5 — Install VS Code Extensions

1. Open **VS Code**
2. Press `Ctrl + Shift + X` to open Extensions
3. Search and install these two:

| Extension | Publisher |
|-----------|-----------|
| Flutter   | Dart Code |
| Dart      | Dart Code |

4. Restart VS Code after installing both

---

## Step 6 — Run Flutter Doctor

Open terminal in VS Code (`Ctrl + ` ` `) and run:

```bash
flutter doctor
```

### Target output — all green ticks:

```
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, 3.x.x)
[✓] Windows Version
[✓] Android toolchain - develop for Android devices
[✓] Chrome - develop for the web
[✓] Visual Studio - develop Windows apps
[✓] Android Studio (version 2023.x)
[✓] VS Code (version 1.x.x)
[✓] Connected device (x available)
[✓] Network resources
```

### Common errors and fixes:

| Error | Fix |
|-------|-----|
| `Android toolchain - Android license status unknown` | Run `flutter doctor --android-licenses` |
| `cmdline-tools component is missing` | Android Studio → SDK Tools → install Command-line Tools |
| `Android Studio not found` | Make sure Android Studio is fully installed |
| `Flutter plugin not installed in VS Code` | Install Flutter extension from marketplace |
| `Unable to locate Android SDK` | Set `ANDROID_HOME` in environment variables |

### Fix ANDROID_HOME if needed:

1. Open Environment Variables
2. Under **System Variables** → click **New**
3. Variable name: `ANDROID_HOME`
4. Variable value:

```
C:\Users\YourName\AppData\Local\Android\Sdk
```

5. Also add to `Path`:

```
C:\Users\YourName\AppData\Local\Android\Sdk\platform-tools
```

---

## Step 7 — Create a Flutter Project in VS Code

1. Open VS Code
2. Press `Ctrl + Shift + P` to open Command Palette
3. Type: `Flutter: New Project`
4. Select **Application**
5. Choose a folder to save your project
6. Give your project a name (lowercase, underscores only — e.g. `my_app`)
7. Press Enter — VS Code will generate the project

Your project structure will look like:

```
my_app/
├── android/
├── ios/
├── lib/
│   └── main.dart       ← your main code goes here
├── test/
├── pubspec.yaml        ← dependencies file
└── README.md
```

---

## Step 8 — Set Up Android Emulator

1. Open **Android Studio**
2. Click **More Actions** → **Virtual Device Manager**
   (or go to **Tools** → **Device Manager**)
3. Click **Create Device**
4. Choose a phone — recommended: **Pixel 6**
5. Click **Next**
6. Download a system image — recommended: **API 33 (Android 13)**
7. Click **Next** → **Finish**
8. Press the **Play ▶ button** to start the emulator

> Wait for the emulator to fully boot before running your app.

---

## Step 9 — Run Your Flutter App in VS Code

### Method 1 — Using the bottom status bar

1. Look at the bottom right of VS Code
2. You will see the device selector — click it
3. Choose your running emulator from the list
4. Press `F5` or go to **Run** → **Start Debugging**

### Method 2 — Using terminal

```bash
# Check connected devices first
flutter devices

# Run the app
flutter run
```

### Method 3 — Using Command Palette

1. Press `Ctrl + Shift + P`
2. Type: `Flutter: Select Device`
3. Choose your emulator
4. Press `F5` to run

---

## Step 10 — Hot Reload and Hot Restart

Once your app is running:

| Action | Shortcut | What it does |
|--------|----------|--------------|
| Hot Reload | `r` in terminal or `Ctrl + F5` | Updates UI instantly without restarting |
| Hot Restart | `R` in terminal | Restarts app and resets state |
| Stop | `q` in terminal | Stops the app |

---

## Verify Everything is Working

Run this final check:

```bash
flutter doctor -v
```

All items should show `[✓]` with no errors or warnings.

---

## Quick Reference — Useful Flutter Commands

```bash
# Create new project
flutter create --org come.my_app my_app

# Run app
flutter run

# Check connected devices
flutter devices

# Get dependencies
flutter pub get

# Check for issues
flutter doctor

# Build APK
flutter build apk

# Clean project
flutter clean
```

---

## Folder Structure Explained

```
lib/main.dart       → entry point of your app
pubspec.yaml        → add packages/dependencies here
android/            → Android-specific config
assets/             → images, fonts, files (add manually)
test/               → unit tests
```

---

## Tips

- Always run `flutter pub get` after adding a new package in `pubspec.yaml`
- Keep your emulator running before pressing F5 in VS Code
- If emulator is slow, enable **Hardware Acceleration (HAXM)** in Android Studio
- Use `flutter clean` then `flutter pub get` when you face weird build errors
