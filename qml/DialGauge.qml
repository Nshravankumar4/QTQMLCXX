import QtQuick
import QtQuick.Shapes

Item {
    id: root
    width: 350
    height: 350

    property real value: 0
    property real maxValue: 240
    property string label: "km/h"
    property string title: "SPEED"
    property color glowColor: "#00d2ff"

    Rectangle {
        anchors.fill: parent
        radius: width / 2
        color: "#0a0a0a"
        border.color: "#1a1a1a"
        border.width: 15

        Shape {
            anchors.fill: parent
            ShapePath {
                strokeColor: "#111111"
                strokeWidth: 10
                fillColor: "transparent"
                capStyle: ShapePath.RoundCap
                PathAngleArc {
                    centerX: root.width / 2; centerY: root.height / 2
                    radiusX: root.width / 2 - 25; radiusY: root.height / 2 - 25
                    startAngle: 140
                    sweepAngle: 260
                }
            }
        }

        Shape {
            anchors.fill: parent
            ShapePath {
                strokeColor: root.glowColor
                strokeWidth: 10
                fillColor: "transparent"
                capStyle: ShapePath.RoundCap
                PathAngleArc {
                    centerX: root.width / 2; centerY: root.height / 2
                    radiusX: root.width / 2 - 25; radiusY: root.height / 2 - 25
                    startAngle: 140
                    sweepAngle: (root.value / root.maxValue) * 260
                }
            }
        }

        Column {
            anchors.centerIn: parent
            spacing: -10
            
            Text {
                text: root.title
                color: "#666666"
                font.pixelSize: 14
                font.letterSpacing: 2
                anchors.horizontalCenter: parent.horizontalCenter
            }
            
            Text {
                text: Number(root.value).toFixed(0)
                color: "white"
                font.pixelSize: 82
                font.bold: true
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                text: root.label
                color: "#888888"
                font.pixelSize: 18
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
}
