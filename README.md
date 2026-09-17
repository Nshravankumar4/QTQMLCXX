# Automotive Digital Dashboard (Qt 6, QML & C++)

A modern automotive digital instrument cluster application built using **Qt 6 (Qt Quick / QML)** and **C++17**, configured with **CMake**.

---

## 📌 Project Overview

This project simulates a digital car dashboard / instrument cluster. It demonstrates the separation of business logic (vehicle speed calculations, telltale indicator states) in C++ and a declarative, reactive user interface in QML.

```
┌─────────────────────────────────────────────────────────────┐
│                        QML Frontend                         │
│   [Top: Telltales]     [Center Display]      [Right: RPM]   │
│   [Left: Speed Gauge with Interactive +/- Controls]         │
│   [Bottom: QML State & Transition Examples]                 │
└──────────────────────────────▲──────────────────────────────┘
                               │ Property Bindings & Slots
┌──────────────────────────────▼──────────────────────────────┐
│                         C++ Backend                         │
│        Vehicle (Speed State)      Telltale (Turn Signals)   │
└─────────────────────────────────────────────────────────────┘
```

---

## 📁 Repository Structure

```text
├── CMakeLists.txt         # Modern Qt 6 CMake configuration with QML modules
├── main.cpp               # Application entry point; exposes C++ objects to QML
├── Main.qml               # Main window shell & layout management using anchors
├── Speed.qml              # Speedometer component with dynamic text & +/- buttons
├── Telltale.qml           # Turn signal indicator lights and switch controls
├── StateExample.qml       # State machine & PropertyChanges interactive example
├── Vehicle.h / .cpp       # Vehicle backend: speed property, bounds (0-250 km/h)
├── Telltale.h / .cpp      # Indicator backend: turn signal slots and signals
└── importedcontent/       # Folder for imported assets (Figma to Qt Bridge)
```

---

## 🚀 Features Implemented So Far

### 1. C++ Backend (`Vehicle` & `Telltale`)
- **`QObject` Architecture**: Uses the Qt Object Model (`Q_OBJECT`) for meta-object compilation.
- **`Q_PROPERTY` System**: Exposes `speed` property to QML with `READ`, `WRITE`, and `NOTIFY speedChanged`.
- **Signals & Slots**:
  - `increaseSpeed()` & `decreaseSpeed()` slots to modify vehicle speed.
  - Safe boundary limits preventing speed from dropping below `0` or exceeding `250 km/h`.
  - Signal emission (`speedChanged()`) notifying QML of state changes.
- **Telltale Signals**: Backend slots and signals for left and right turn indicators.

### 2. C++ to QML Integration Bridge
- Configured in `main.cpp` using `QQmlApplicationEngine`.
- Injects backend objects into QML's global scope using `setContextProperty`:
  - `"vehicle"` -> `Vehicle` instance
  - `"telltale"` -> `Telltale` instance
- Uses `engine.loadFromModule("AutomotiveDashboard", "Main")` for Qt 6 module loading.

### 3. Declarative UI (QML)
- **Modular Component Design**: Dedicated components for Speed, Telltales, and States integrated into `Main.qml`.
- **Anchor Layouts**: Responsive dashboard layout utilizing `anchors` (`top`, `leftMargin`, `verticalCenter`, `centerIn`).
- **Reactive Data Binding**:
  - Speed display automatically refreshes when `vehicle.speed` updates: `text: vehicle.speed + " km/h"`.
- **Interactive Controls**:
  - `+ Speed` and `- Speed` buttons call backend C++ methods directly (`vehicle.increaseSpeed()`).
  - Interactive turn signal toggles with active button press states (`pressed ? "darkred" : "green"`).
- **QML States & Transitions (`StateExample.qml`)**:
  - Demonstrates state-driven UI changes using `states` and `PropertyChanges`.
  - Dynamically switches component appearance ("normal" vs. "red") via `MouseArea` interaction.

---

## 🛠️ Prerequisites & Tech Stack

- **C++ Standard**: C++17
- **Qt Framework**: Qt 6.5 or newer (Qt Quick, Qt Quick Controls)
- **Build System**: CMake 3.16+
- **Compiler**: GCC / Clang / MSVC with C++17 support

---

## 💻 How to Build and Run

### Option A: Using Qt Creator (Recommended)
1. Open Qt Creator.
2. Select **File > Open File or Project...** and choose `CMakeLists.txt`.
3. Configure the project with a **Qt 6.5+ Desktop Kit** (MSVC or MinGW on Windows, GCC on Linux).
4. Click **Run** (Ctrl + R).

### Option B: Using CMake Command Line
```bash
# 1. Create and navigate to a build directory
cmake -B build -S . -DCMAKE_PREFIX_PATH="<path_to_your_qt6_installation>"

# 2. Build the project
cmake --build build

# 3. Run the application
# Windows:
.\build\AutomotiveDashboard.exe
# Linux:
./build/AutomotiveDashboard
```

---

## 🗺️ Roadmap & Upcoming Features

- [ ] **RPM Gauge**: Implement dynamic RPM logic in `Vehicle` and create an `Rpm.qml` gauge.
- [ ] **Indicator Animations**: Add blinking turn signals using QML `Timer` / `SequentialAnimation`.
- [ ] **Center Information Display (CID)**: Add gear selector (`P`, `R`, `N`, `D`), fuel/battery percentage, and odometer.
- [ ] **Needle / Circular Gauges**: Render custom gauges using `Shape`, `Canvas`, or imported vector assets from Figma.
- [ ] **Qt 6 `QML_ELEMENT` Migration**: Migrate from legacy `setContextProperty` to declarative `QML_ELEMENT` registration.
