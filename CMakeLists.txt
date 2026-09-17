cmake_minimum_required(VERSION 3.16)

project(AutomotiveDashboard VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appAutomotiveDashboard
    main.cpp

    Vehicle.cpp
    Vehicle.h

    Telltale.cpp
    Telltale.h
)

qt_add_qml_module(appAutomotiveDashboard
    URI AutomotiveDashboard
    VERSION 1.0

    QML_FILES
        Main.qml
        Speed.qml
        Telltale.qml
        StateExample.qml
)

target_link_libraries(appAutomotiveDashboard
    PRIVATE Qt6::Quick
)