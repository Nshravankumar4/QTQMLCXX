import QtQuick
import QtQuick.Controls

ApplicationWindow {

    visible: true
    width: 400
    height: 400
    title: "HMI"
    property int testSpeed: vehicle.speed
    property string bclick: "NA"
        Rectangle {
               id: screen
        anchors.fill: parent
        color: "Black"

        Text {
             id: speedText
            anchors.centerIn: parent
            text: "name: " + vehicle.speed
            color: "white"
            font.pixelSize: 8
            font.bold: true
            }
        Text {
         anchors.horizontalCenter: parent.horizontalCenter
         anchors.top: speedText.bottom
         anchors.topMargin: 20

         text: bclick
         color: "Yellow"
         font.pixelSize: 18
        }
        }

        Button {
              id: leftButton
            anchors.left: parent.left
            text: "Left"
            background: Rectangle {
                color: "Red"
            }
            onClicked: {

             console.log("Red Button Clicked")
                testSpeed = 200
             speedText.text = "Changed: " + testSpeed
            }
        }

        Button {
            anchors.right: parent.right
            text: "Right"
            background: Rectangle {
                color: "green"
            }
            onClicked: {
                console.log("Green Button Clicked")
               speedText.text = "OriginaSpeed" + vehicle.speed
            }
        }

        Button {
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 100
            anchors.bottomMargin: 100
            text: "No"
            width: 50
            height: 50
            background: Rectangle{
            color: "red"
            }
            onClicked: {
            console.log("No")
                bclick = "No_Button"
            }
        }


        Button{
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 100
            text: "Reset"
            width: 50
            height: 50
            background: Rectangle {
                color: "Yellow"
            }
            onClicked: {
                console.log("Reset")
               bclick = "Reset"
            }
        }
        Button {
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.rightMargin: 100
            anchors.bottomMargin: 100
            text: "Yes"
            width: 50
            height: 50
            background: Rectangle{
            color: "green"
            }
            onClicked: {
            console.log("Yes")
               bclick = "Yes_Button"
            }
        }


}















// /*import QtQuick
// import QtQuick.Controls

// ApplicationWindow {
//     visible: true

//     width: 800
//     height: 480

//     title: "Vehicle HMI"

//     property int speed: 80
//     property string driveMode: "NORMAL"

//     Column {
//         anchors.centerIn: parent
//         spacing: 20

//         Text {
//             text: "VEHICLE HMI"
//             font.pixelSize: 32
//             font.bold: true

//             anchors.horizontalCenter: parent.horizontalCenter
//         }

//         Text {
//             text: speed
//             font.pixelSize: 90
//             font.bold: true

//             anchors.horizontalCenter: parent.horizontalCenter
//         }

//         Text {
//             text: "km/h"
//             font.pixelSize: 24

//             anchors.horizontalCenter: parent.horizontalCenter
//         }

//         Text {
//             text: "Drive Mode: " + driveMode
//             font.pixelSize: 22

//             anchors.horizontalCenter: parent.horizontalCenter
//         }

//         Row {
//             spacing: 10

//             anchors.horizontalCenter: parent.horizontalCenter

//             Button {
//                 text: "Increase"

//                 onClicked: {
//                     speed += 10
//                 }
//             }

//             Button {
//                 text: "Decrease"

//                 onClicked: {
//                     if (speed > 0)
//                         speed -= 10
//                 }
//             }

//             Button {
//                 text: "Sport"

//                 onClicked: {
//                     driveMode = "SPORT"
//                 }
//             }

//             Button {
//                 text: "Normal"

//                 onClicked: {
//                     driveMode = "NORMAL"
//                 }
//             }
//         }
//     }
// }
// import QtQuick              // Provides basic QML types like Item, Text, Rectangle, etc.
// import QtQuick.Controls     // Provides UI controls like Button, ApplicationWindow, etc.

// ApplicationWindow {

//     visible: true            // Makes the application window visible.
//     width: 200              // Sets the window width to 200 pixels.
//     height: 200             // Sets the window height to 200 pixels.
//     title: "My application"  // Sets the title of the application window.


//     // --------------------------------------------------
//     // TEXT
//     // --------------------------------------------------

//     Text {
//         id: message          // Gives this Text object a unique ID: "message".

//         text: "Hello"        // Text that will be displayed on the screen.

//         color: "red"         // Changes the text color to red.

//         anchors.centerIn: parent
//         // Places the Text in the center of its parent (ApplicationWindow).
//         //
//         // NOTE:
//         // anchors.fill: parent should NOT be used together with
//         // anchors.centerIn: parent for this example.
//     }


//     // --------------------------------------------------
//     // BUTTON
//     // --------------------------------------------------

//     Button {
//         text: "click me"     // Text displayed inside the button.

//         anchors.right: parent.right
//         // Moves the button to the right side of its parent.

//         anchors.rightMargin: 3
//         // Leaves 3 pixels of space between the button
//         // and the right edge of the parent.


//         // --------------------------------------------------
//         // BUTTON BACKGROUND
//         // --------------------------------------------------

//         background: Rectangle {
//             color: "green"   // Makes the button background green.
//         }


//         // --------------------------------------------------
//         // BUTTON CLICK EVENT
//         // --------------------------------------------------

//         onClicked: {
//             // This code runs when the user clicks the button.

//             console.log("Button Clicked")
//             // Prints "Button Clicked" in the Application Output / console.
//         }
//     }
// }

// */


// /*
// import QtQuick
// import QtQuick.Controls

// ApplicationWindow {
//     visible: true
//     width: 200
//     height: 200
//     title: "My application"

//     Text {
//         id: message
//         text: "Hello"
//         color: "red"
//         anchors.fill: parent
//         anchors.centerIn: parent // move to center position of application.
//     }

//     Button {
//         text: "click me"
//         anchors.right: parent.right // move to complete right side.
//         anchors.rightMargin: 3 // right to left position move.
//         background: Rectangle {
//             color: "green"
//         }

//         onClicked: { // button action
//             console.log("Button Clicked")
//         }
//     }
// }*/

// import QtQuick
// import QtQuick.Controls

// ApplicationWindow {
//     visible: true
//     width: 600
//     height: 400
//     title: "QML Position Practice"

//     // TOP-LEFT
//     Rectangle {
//         width: 80
//         height: 50
//         color: "red"

//         anchors.left: parent.left
//         anchors.top: parent.top
//     }

//     // TOP-CENTER
//     Rectangle {
//         width: 80
//         height: 50
//         color: "green"

//         anchors.horizontalCenter: parent.horizontalCenter
//         anchors.top: parent.top
//     }

//     // TOP-RIGHT
//     Rectangle {
//         width: 80
//         height: 50
//         color: "blue"

//         anchors.right: parent.right
//         anchors.top: parent.top
//     }

//     // CENTER-LEFT
//     Rectangle {
//         width: 80
//         height: 50
//         color: "yellow"

//         anchors.left: parent.left
//         anchors.verticalCenter: parent.verticalCenter
//     }

//     // CENTER
//     Rectangle {
//         width: 80
//         height: 50
//         color: "orange"

//         anchors.centerIn: parent
//     }

//     // CENTER-RIGHT
//     Rectangle {
//         width: 80
//         height: 50
//         color: "purple"

//         anchors.right: parent.right
//         anchors.verticalCenter: parent.verticalCenter
//     }

//     // BOTTOM-LEFT
//     Rectangle {
//         width: 80
//         height: 50
//         color: "pink"

//         anchors.left: parent.left
//         anchors.bottom: parent.bottom
//     }

//     // BOTTOM-CENTER
//     Rectangle {
//         width: 80
//         height: 50
//         color: "cyan"

//         anchors.horizontalCenter: parent.horizontalCenter
//         anchors.bottom: parent.bottom
//     }

//     // BOTTOM-RIGHT
//     Rectangle {
//         width: 80
//         height: 50
//         color: "brown"

//         anchors.right: parent.right
//         anchors.bottom: parent.bottom
//     }
// }

