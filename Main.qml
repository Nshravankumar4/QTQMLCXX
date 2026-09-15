import QtQuick
import QtQuick.Controls

ApplicationWindow {

    visible: true
    width: 1000
    height: 800
    color: "black"

    Speed {
        width: 300
        height: 300
        anchors.centerIn: parent
    }

    Telltale {
        width: 1000
        height: 30
        anchors.top: parent.top
        //anchors.centerIn: parent
    }
}