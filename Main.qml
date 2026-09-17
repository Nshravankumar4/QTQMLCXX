import QtQuick
import QtQuick.Controls

ApplicationWindow {

    visible: true

    width: 1000
    height: 800

    color: "black"


    // ==============================
    // TOP - TELLTALE
    // ==============================

    Telltale {
        id: telltale

        width: 300
        height: 100

        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }


    // ==============================
    // LEFT - SPEED
    // ==============================

    Speed {
        id: speedGauge

        width: 300
        height: 300

        anchors.left: parent.left
        anchors.leftMargin: 50

        anchors.verticalCenter: parent.verticalCenter
    }


    // ==============================
    // CENTER DISPLAY
    // ==============================

    Rectangle {
        id: centerDisplay

        width: 200
        height: 100

        anchors.centerIn: parent

        color: "darkgray"

        Text {
            anchors.centerIn: parent

            text: "CENTER"

            color: "white"

            font.pixelSize: 25
        }
    }


    // ==============================
    // RIGHT - RPM
    // ==============================

    Rectangle {
        id: rpmGauge

        width: 300
        height: 300

        anchors.right: parent.right
        anchors.rightMargin: 50

        anchors.verticalCenter: parent.verticalCenter

        color: "darkblue"

        Text {
            anchors.centerIn: parent

            text: "RPM"

            color: "white"

            font.pixelSize: 40
        }
    }


    // ==============================
    // STATE EXAMPLE
    // ==============================

    StateExample {
        id: sample

        width: 200
        height: 200

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
    }
}