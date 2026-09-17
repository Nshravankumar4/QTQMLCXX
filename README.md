
# Automotive Digital Dashboard

## Project Overview

Automotive Digital Dashboard is a **digital instrument cluster application** developed using **Qt 6, QML, C++17, and CMake**.

The application displays vehicle information such as **Speed, RPM, and Gear** in a dashboard-style UI.

The project separates the application into two parts:

* **C++** → Handles vehicle data and business logic.
* **QML** → Handles the dashboard UI and user interaction.

## How It Works
<img width="1532" height="803" alt="image" src="https://github.com/user-attachments/assets/eb8e5a83-c915-4dfc-9d7d-e063d5f49a51" />
<img width="1509" height="794" alt="image" src="https://github.com/user-attachments/assets/055a1832-1460-477c-8757-64dcf2168d57" />

The application works in the following flow:

**QML UI → C++ Backend → Vehicle Data → QML UI**

For example, for Speed:

**Click `+` button**

→ QML sends the request to C++

→ C++ increases the speed

→ C++ sends a `speedChanged` signal

→ QML receives the updated speed

→ Speed gauge updates on the screen

The same communication is used for **RPM and Gear**.

## C++ Backend

The C++ backend manages the main vehicle data:

* Speed
* RPM
* Gear

C++ provides this data to QML using **Qt properties, signals, and slots**.

## QML Frontend

QML is responsible for displaying the dashboard.

It contains:

* Speed Gauge
* RPM Gauge
* Gear Selector
* `+` / `-` Speed Controls
* Sidebar
* Home View
* Map View

QML automatically updates the UI when the values received from C++ change.

## Project Architecture

```text
             USER
               |
               v
          QML UI
       /     |      \
   Speed    RPM     Gear
   Button   Gauge   Selector
       |
       v
    C++ Backend
       |
       v
 Vehicle Data & Logic
       |
       v
  Signals / Properties
       |
       v
      QML
       |
       v
 Updated Dashboard
```

## Technologies Used

* **C++17** – Backend logic
* **Qt 6** – Application framework
* **QML / Qt Quick** – User interface
* **CMake** – Build system

## Main Features

* Digital Speed Gauge
* RPM Gauge
* PRND Gear Selector
* Speed Increase / Decrease
* Multiple Dashboard Views
* C++ and QML Integration
* Reusable QML Components
