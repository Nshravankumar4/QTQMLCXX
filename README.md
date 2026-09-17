# Automotive Digital Dashboard (Qt 6, QML & C++)

A modern automotive digital instrument cluster application built using **Qt 6 (Qt Quick / QML)** and **C++17**, configured with **CMake**.

---

## ?? Project Overview

This project simulates a digital car dashboard with multiple views. It perfectly demonstrates the separation of business logic (vehicle speed, engine RPM, and gear shifting) in C++ and a highly declarative, beautiful user interface in QML.

`
+-------------------------------------------------------------+
¦                        QML Frontend                         ¦
¦                                                             ¦
¦  [Sidebar Menu]     [Left: Speed Gauge]    [Right: RPM]     ¦
¦  - Home View        [Center: PRND Gear Selector]            ¦
¦  - Map View         [Interactive +/- Controls]              ¦
¦                                                             ¦
+------------------------------?------------------------------+
                               ¦ Property Bindings & Slots
+------------------------------?------------------------------+
¦                         C++ Backend                         ¦
¦           Dashboard (Speed, RPM, Gear Logic)                ¦
+-------------------------------------------------------------+
`

---

## ?? Repository Structure

`	ext
+-- CMakeLists.txt         # Modern Qt 6 CMake configuration with QML modules
+-- include/
¦   +-- Dashboard.h        # C++ Header: Defines Q_PROPERTIES, Signals, and Slots
+-- src/
¦   +-- main.cpp           # Application entry point; exposes C++ backend to QML
¦   +-- Dashboard.cpp      # C++ Source: Implements the logic for Speed, RPM, PRND
+-- qml/
    +-- Main.qml           # Main window shell & multi-view sidebar layout
    +-- DialGauge.qml      # Beautiful circular gauge component using QtQuick.Shapes
`

---

## ?? Features Implemented So Far

### 1. C++ Backend (Dashboard.h & .cpp)
- **QObject Architecture**: Uses the Qt Object Model (Q_OBJECT) to act as the "brain".
- **Q_PROPERTY System**: Exposes speed, pm, and gear directly to QML with READ, WRITE, and NOTIFY signals.
- **Signals & Slots**:
  - equestIncreaseSpeed() & equestDecreaseSpeed() slots to safely modify the speed.
  - Signal emissions (speedChanged(), pmChanged()) that instantly notify QML of state changes.

### 2. C++ to QML Integration Bridge
- Configured in main.cpp using QQmlApplicationEngine.
- Injects the Dashboard backend object into QML's global scope using setContextProperty:
  - "dashboardBackend" -> Dashboard instance.

### 3. Declarative UI (QML)
- **Modular Component Design**: Dedicated DialGauge.qml component using Qt 6's powerful QtQuick.Shapes for drawing gorgeous, scalable circular gauges.
- **Multi-View Layout**: A custom interactive Sidebar on the left allowing you to switch between views (e.g., "Home" for a double gauge, and "Map" for a single gauge).
- **Reactive Data Binding**:
  - Gauges automatically refresh when dashboardBackend.speed updates!
  - Connections block used to gracefully connect UI events to C++ signals.
- **Interactive Controls**:
  - + and - buttons call backend C++ methods directly (dashboardBackend.requestIncreaseSpeed()).
  - "Shift Gear" button easily cycles through Park, Reverse, Neutral, and Drive states!

---

## ??? Prerequisites & Tech Stack

- **C++ Standard**: C++17
- **Qt Framework**: Qt 6.5 or newer (Qt Quick, Qt Quick Shapes, Qt Quick Controls)
- **Build System**: CMake 3.16+
- **Compiler**: GCC / Clang / MSVC with C++17 support

---

## ?? How to Build and Run

### Option A: Using Qt Creator (Recommended)
1. Open Qt Creator.
2. Select **File > Open File or Project...** and choose CMakeLists.txt.
3. Configure the project with a **Qt 6.5+ Desktop Kit** (MSVC or MinGW on Windows, GCC on Linux).
4. Click **Run** (Ctrl + R).

### Option B: Using CMake Command Line
`ash
# 1. Create and navigate to a build directory
cmake -B build -S . -DCMAKE_PREFIX_PATH="<path_to_your_qt6_installation>"

# 2. Build the project
cmake --build build

# 3. Run the application
# Windows:
.\build\AutomotiveDashboard.exe
# Linux:
./build/AutomotiveDashboard
`

---

## ??? Roadmap & Upcoming Features

- [ ] **GPS Map Integration**: Fill the right side of the "Map" view with an actual navigation component.
- [ ] **Indicator Animations**: Add blinking turn signals using QML Timer or SequentialAnimation.
- [ ] **Theme Switching**: Allow switching the UI between "Day Mode" and "Night Mode".
- [ ] **Qt 6 QML_ELEMENT Migration**: Migrate from legacy setContextProperty to declarative QML_ELEMENT registration.
