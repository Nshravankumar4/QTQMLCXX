import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 1200
    height: 600
    color: "#050505"
    title: "Double Gauge Dashboard"

    property string currentView: "home"

    Connections {
        target: dashboardBackend
    }

    Rectangle {
        id: sidebar
        width: 120
        height: parent.height
        color: "#111"
        anchors.left: parent.left
        
        Column {
            anchors.centerIn: parent
            spacing: 20
            
            Button {
                text: "Home"
                width: 100
                height: 80
                onClicked: currentView = "home"
                
                background: Rectangle { 
                    color: currentView === "home" ? "#333" : "transparent"
                    radius: 10 
                }
                
                contentItem: Text { 
                    text: parent.text 
                    color: "white" 
                    horizontalAlignment: Text.AlignHCenter 
                    verticalAlignment: Text.AlignVCenter 
                    font.bold: true 
                    font.pixelSize: 18 
                }
            }
            
            Button {
                text: "Map"
                width: 100
                height: 80
                onClicked: currentView = "map"
                
                background: Rectangle { 
                    color: currentView === "map" ? "#333" : "transparent"
                    radius: 10 
                }
                
                contentItem: Text { 
                    text: parent.text 
                    color: "white" 
                    horizontalAlignment: Text.AlignHCenter 
                    verticalAlignment: Text.AlignVCenter 
                    font.bold: true 
                    font.pixelSize: 18 
                }
            }
        }
    }

    Item {
        id: contentArea
        anchors.left: sidebar.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        Item {
            id: doubleGaugeView
            anchors.fill: parent
            visible: currentView === "home"

            Item {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 50
                width: 300
                height: 350
                
                DialGauge {
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 300
                    height: 300
                    value: dashboardBackend.speed
                    maxValue: 240
                    title: "SPEED"
                    label: "km/h"
                    glowColor: "#00d2ff"
                }

                Row {
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 20
                    
                    Button { 
                        text: "-"
                        onClicked: dashboardBackend.requestDecreaseSpeed() 
                    }
                    
                    Button { 
                        text: "+"
                        onClicked: dashboardBackend.requestIncreaseSpeed() 
                    }
                }
            }

            Item {
                width: 200
                height: 150
                anchors.centerIn: parent
                
                Text {
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "GEAR\n" + dashboardBackend.gear
                    horizontalAlignment: Text.AlignHCenter
                    color: "yellow"
                    font.pixelSize: 45
                    font.bold: true
                }
                
                Button {
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Shift Gear"
                    onClicked: dashboardBackend.requestNextGear()
                }
            }

            Item {
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                anchors.rightMargin: 50
                width: 300
                height: 350
                
                DialGauge {
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 300
                    height: 300
                    value: dashboardBackend.rpm
                    maxValue: 8000
                    title: "POWER"
                    label: "rpm"
                    glowColor: "#ff3366"
                }

                Row {
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    spacing: 20
                    
                    Button { 
                        text: "-"
                        onClicked: dashboardBackend.requestDecreaseRpm() 
                    }
                    
                    Button { 
                        text: "+"
                        onClicked: dashboardBackend.requestIncreaseRpm() 
                    }
                }
            }
        }

        Item {
            id: singleGaugeView
            anchors.fill: parent
            visible: currentView === "map"

            Item {
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                anchors.leftMargin: 20
                width: 250
                height: 300
                
                DialGauge {
                    anchors.top: parent.top
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 250
                    height: 250
                    value: dashboardBackend.speed
                    maxValue: 240
                    title: "SPEED"
                    label: "km/h"
                    glowColor: "#00d2ff"
                }
            }

            Rectangle {
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.leftMargin: 300
                anchors.margins: 20
                color: "#1a1a1a"
                border.color: "#333"
                border.width: 2
                radius: 10

                Text {
                    anchors.centerIn: parent
                    text: "MAP NAVIGATION VIEW"
                    color: "#666"
                    font.pixelSize: 30
                    font.bold: true
                }
            }
        }
    }
}
