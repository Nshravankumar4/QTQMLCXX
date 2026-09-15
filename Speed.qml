import QtQuick
import QtQuick.Controls

Rectangle {
       // anchors.fill: parent fill means it will complete entry screen will be get
        color: "black"

        Text {
            anchors.centerIn: parent
            text: vehicle.speed + " km/h"
            color: "white"
            font.pixelSize: 40
        }

        Button {
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 20
            anchors.bottomMargin: 20

            text: "+ Speed"
            background: Rectangle {
                color: "red"
            }

            onClicked: {
                vehicle.increaseSpeed()
            }
        }

        Button {
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 20
            anchors.bottomMargin: 20
            text: "- Speed"
            font.bold: true
            background: Rectangle {
                color: "green"

            }
            onClicked: {
                vehicle.decreaseSpeed()
            }
        }
    }