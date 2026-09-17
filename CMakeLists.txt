cmake_minimum_required(VERSION 3.16)

project(AutomotiveDashboard VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick)
qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appAutomotiveDashboard
    src/main.cpp
    src/Dashboard.cpp
    include/Dashboard.h
)

target_include_directories(appAutomotiveDashboard PRIVATE include)

if(COMMAND qt_policy)
    qt_policy(SET QTP0001 NEW)
    qt_policy(SET QTP0004 OLD)
endif()

qt_add_qml_module(appAutomotiveDashboard
    URI AutomotiveDashboard
    VERSION 1.0
    QML_FILES
        qml/Main.qml
        qml/DialGauge.qml
)

target_link_libraries(appAutomotiveDashboard
    PRIVATE Qt6::Quick
)