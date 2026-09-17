# My Digital Car Dashboard 🚗

Welcome to my car dashboard project! This is a simple app built with **Qt 6** that shows a digital instrument cluster, just like the screen you see behind the steering wheel in modern cars.

## What does it do?
It has a sidebar menu that lets you click to switch between two different screens:

1. **🏠 Home Screen**: This is your main driving view. It shows two beautiful, glowing circular gauges—one for your Speed (left) and one for your Engine Power / RPM (right). Right in the middle, you can shift gears (P, R, N, D).
2. **🗺️ Map Screen**: This is your navigation view. It shows a single Speed gauge on the left so you know how fast you are going, and leaves a big empty space on the right where a GPS map can be added later!

## How does it work behind the scenes?
We separated the code into two parts so it's super easy to understand:

* **The Brain (C++)**: We wrote the logic in `Dashboard.cpp` and `Dashboard.h`. This is where the car remembers how fast it's going, what its RPM is, and what gear it is in. 
* **The Face (QML)**: We designed the beautiful user interface in `Main.qml` and `DialGauge.qml`. This is where we draw the gauges and buttons.

The coolest part? We used Qt's `Q_PROPERTY` feature. This acts like an invisible bridge between the Brain and the Face! When the C++ code says "the speed increased," the QML screen instantly updates the speedometer on its own without any extra work.

## How to run it!
1. Open up **Qt Creator**.
2. Click **File -> Open File or Project** and select the `CMakeLists.txt` file in this folder.
3. Click the big green **Run** button at the bottom left. 
4. Enjoy playing with the buttons to speed up your virtual car!
