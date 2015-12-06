import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls.Styles 1.2

Window
{
    id: mainWindow
    visible: true
    minimumHeight: 500
    minimumWidth: minimumHeight
    maximumHeight: minimumWidth
    maximumWidth: maximumHeight

    Rectangle
    {
        id: background
        color: "#262626"
        anchors.fill: parent

        Rectangle
        {
            id: frontBack
            color: "#FAFAFA"
            anchors
            {
                fill: background
                margins: background.width*(1/20)
            }

            Item
            {
                id: repository

                anchors
                {
                    topMargin: frontBack.height*(7/20)
                    leftMargin: frontBack.width*(1/20)
                    bottomMargin: frontBack.height*(7/20)
                    rightMargin: frontBack.width*(1/20)
                    centerIn: background.Center
                    fill: frontBack
                }

                Rectangle
                {
                    id: red
                    color: "#C80000"
                    height: repository.height/3
                    width: repository.width/9
                    anchors
                    {
                        top: repository.top
                        left: repository.left
                    }
                }

                Rectangle
                {
                    id: green
                    color: "#00C800"
                    height: red.height
                    width: red.width*6

                    anchors
                    {
                        top: red.bottom
                        left: red.right
                    }
                }

                Rectangle
                {
                    id: blue
                    color: "#0000C8"
                    height: red.height
                    width: red.width*2

                    anchors
                    {
                        top: green.bottom
                        left: green.right
                    }
                }
            }
        }
    }
}
