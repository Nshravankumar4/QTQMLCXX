/*import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true

    width: 800
    height: 480

    title: "Vehicle HMI"

    property int speed: 80
    property string driveMode: "NORMAL"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "VEHICLE HMI"
            font.pixelSize: 32
            font.bold: true

            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: speed
            font.pixelSize: 90
            font.bold: true

            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "km/h"
            font.pixelSize: 24

            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            text: "Drive Mode: " + driveMode
            font.pixelSize: 22

            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            spacing: 10

            anchors.horizontalCenter: parent.horizontalCenter

            Button {
                text: "Increase"

                onClicked: {
                    speed += 10
                }
            }

            Button {
                text: "Decrease"

                onClicked: {
                    if (speed > 0)
                        speed -= 10
                }
            }

            Button {
                text: "Sport"

                onClicked: {
                    driveMode = "SPORT"
                }
            }

            Button {
                text: "Normal"

                onClicked: {
                    driveMode = "NORMAL"
                }
            }
        }
    }
}
import QtQuick              // Provides basic QML types like Item, Text, Rectangle, etc.
import QtQuick.Controls     // Provides UI controls like Button, ApplicationWindow, etc.

ApplicationWindow {

    visible: true            // Makes the application window visible.
    width: 200              // Sets the window width to 200 pixels.
    height: 200             // Sets the window height to 200 pixels.
    title: "My application"  // Sets the title of the application window.


    // --------------------------------------------------
    // TEXT
    // --------------------------------------------------

    Text {
        id: message          // Gives this Text object a unique ID: "message".

        text: "Hello"        // Text that will be displayed on the screen.

        color: "red"         // Changes the text color to red.

        anchors.centerIn: parent
        // Places the Text in the center of its parent (ApplicationWindow).
        //
        // NOTE:
        // anchors.fill: parent should NOT be used together with
        // anchors.centerIn: parent for this example.
    }


    // --------------------------------------------------
    // BUTTON
    // --------------------------------------------------

    Button {
        text: "click me"     // Text displayed inside the button.

        anchors.right: parent.right
        // Moves the button to the right side of its parent.

        anchors.rightMargin: 3
        // Leaves 3 pixels of space between the button
        // and the right edge of the parent.


        // --------------------------------------------------
        // BUTTON BACKGROUND
        // --------------------------------------------------

        background: Rectangle {
            color: "green"   // Makes the button background green.
        }


        // --------------------------------------------------
        // BUTTON CLICK EVENT
        // --------------------------------------------------

        onClicked: {
            // This code runs when the user clicks the button.

            console.log("Button Clicked")
            // Prints "Button Clicked" in the Application Output / console.
        }
    }
}

*/


/*
import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 200
    height: 200
    title: "My application"

    Text {
        id: message
        text: "Hello"
        color: "red"
        anchors.fill: parent
        anchors.centerIn: parent // move to center position of application.
    }

    Button {
        text: "click me"
        anchors.right: parent.right // move to complete right side.
        anchors.rightMargin: 3 // right to left position move.
        background: Rectangle {
            color: "green"
        }

        onClicked: { // button action
            console.log("Button Clicked")
        }
    }
}*/

import QtQuick
import QtQuick.Controls

ApplicationWindow {
    visible: true
    width: 600
    height: 400
    title: "QML Position Practice"

    // TOP-LEFT
    Rectangle {
        width: 80
        height: 50
        color: "red"

        anchors.left: parent.left
        anchors.top: parent.top
    }

    // TOP-CENTER
    Rectangle {
        width: 80
        height: 50
        color: "green"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
    }

    // TOP-RIGHT
    Rectangle {
        width: 80
        height: 50
        color: "blue"

        anchors.right: parent.right
        anchors.top: parent.top
    }

    // CENTER-LEFT
    Rectangle {
        width: 80
        height: 50
        color: "yellow"

        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }

    // CENTER
    Rectangle {
        width: 80
        height: 50
        color: "orange"

        anchors.centerIn: parent
    }

    // CENTER-RIGHT
    Rectangle {
        width: 80
        height: 50
        color: "purple"

        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }

    // BOTTOM-LEFT
    Rectangle {
        width: 80
        height: 50
        color: "pink"

        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }

    // BOTTOM-CENTER
    Rectangle {
        width: 80
        height: 50
        color: "cyan"

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
    }

    // BOTTOM-RIGHT
    Rectangle {
        width: 80
        height: 50
        color: "brown"

        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }
}