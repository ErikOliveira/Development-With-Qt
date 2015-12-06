import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    visible: true
    minimumHeight: 200
    minimumWidth: 200

    Rectangle{
        id: back
        anchors.fill: parent
        color: "Black"
        z: 1

        Rectangle{
            id: sqrRep
            anchors.topMargin: back.height/10
            anchors.bottomMargin: sqrRep.anchors.topMargin
            anchors.leftMargin: back.width/10
            anchors.rightMargin: sqrRep.anchors.leftMargin
            anchors.fill: parent
            color: "#666699"
            z: 999

            Rectangle{
                id: upperLeft
                y: sqrRep.height/10
                x: sqrRep.width/10
                implicitWidth: (sqrRep.width*4)/10
                implicitHeight: (sqrRep.height*35)/100
                color: "#009FD4"
            }
            Rectangle{
                id: bottomLeft
                y: upperLeft.y*(55/10)
                x: upperLeft.x
                implicitHeight: upperLeft.height
                implicitWidth: upperLeft.width
                color: "#3B76B0"
            }

            Rectangle{
                id: upperRight
                y: upperLeft.y
                x: upperLeft.x*6
                implicitHeight: sqrRep.height - 2*upperLeft.y
                implicitWidth: sqrRep.width - 7*upperLeft.x
                color: "#47476B"
            }
        }
    }
}
