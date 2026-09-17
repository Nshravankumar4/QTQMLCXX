import QtQuick

Rectangle {

    id: root

    width: 400
    height: 200

    color: "black"


    Rectangle {
        id: box

        width: 100
        height: 100

        anchors.centerIn: parent

        color: "green"
    }


    MouseArea {
        anchors.fill: parent

        onClicked: {

            if (root.state === "red") {
                root.state = "normal"
            }
            else {
                root.state = "red"
            }
        }
    }


    states: [

        State {
            name: "normal"

            PropertyChanges {
                target: box
                color: "green"
            }
        },


        State {
            name: "red"

            PropertyChanges {
                target: box
                color: "red"
            }
        }

    ]
}