import QtQuick
import QtQuick.Controls

Rectangle {
    width: 300
    height: 100
    color: "black"

    // LEFT BUTTON
    Button {
        id: leftButton

        anchors.left: parent.left
        anchors.leftMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20

        width: 70
        height: 40

        text: "LEFT"

        background: Rectangle {
            color: leftButton.pressed ? "darkred" : "green"
        }

        onClicked: {
            leftTelltale.visible = true
            rightTelltale.visible = false
        }
    }

    // LEFT TELLTALE
    Rectangle {
        id: leftTelltale

        anchors.left: leftButton.right
        anchors.leftMargin: 10
        anchors.verticalCenter: leftButton.verticalCenter

        width: 20
        height: 20

        color: "red"
        visible: false
    }


    // RIGHT BUTTON
    Button {
        id: rightButton

        anchors.right: parent.right
        anchors.rightMargin: 20
        anchors.top: parent.top
        anchors.topMargin: 20

        width: 70
        height: 40

        text: "RIGHT"

        background: Rectangle {
            color: rightButton.pressed ? "darkred" : "green"
        }

        onClicked: {
            rightTelltale.visible = true
            leftTelltale.visible = false
        }
    }

    // RIGHT TELLTALE
    Rectangle {
        id: rightTelltale

        anchors.right: rightButton.left
        anchors.rightMargin: 10
        anchors.verticalCenter: rightButton.verticalCenter

        width: 20
        height: 20

        color: "red"
        visible: false
    }
}