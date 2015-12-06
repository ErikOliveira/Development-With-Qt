import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Window {
    title: "QML Basics"
    visible: true
    maximumHeight: 400
    maximumWidth: maximumHeight
    minimumHeight: maximumHeight
    minimumWidth: 270
    color: "lightblue"

    ColumnLayout
    {
        id: repository
        anchors.fill: parent
        spacing: 5

        Text
        {
            text: "QML EXERCICIO - 01"
            font.family: "Arial"
            font.pointSize: 18

            Layout.preferredHeight: implicitHeight
            Layout.preferredWidth: implicitWidth
            Layout.alignment: Qt.AlignHCenter
        }

        ColumnLayout
        {
            spacing: 1
            Layout.alignment: Qt.AlignHCenter
            TextInput{

                id: textField

                Layout.preferredHeight: implicitHeight
                Layout.preferredWidth: repository.width*(8/10)
                Layout.alignment: Qt.AlignCenter

                Rectangle
                {
                    id: textBorder
                    color: "transparent"
                    anchors.fill: textField
                    radius: width*(1/20)

                    border
                    {
                        width: 1
                        color: "#000000"
                    }
                }

                color: "#FFFFFF"
                cursorVisible: false
                autoScroll: false
                clip: true
                focus: false
                maximumLength: 15

                text: qsTr("Digite algo...")
                font.family: "Arial"
                font.pointSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

                onAccepted:
                {
                    textField.cursorVisible = textField.focus = textField.autoScroll = false;
                    textField.color = "#FFFFFF";
                    outDisplay.text = textField.text;
                }

                MouseArea
                {
                    anchors.fill: textField
                    onClicked:
                    {
                        textField.text = "";
                        textField.color = outDisplay.textColor;
                        textField.cursorVisible = textField.focus = textField.autoScroll = true;

                    }
                }
            }

            Button{
                Layout.alignment: Qt.AlignCenter
                text: qsTr("Gerar")
                MouseArea{
                    anchors.fill: parent;
                    onClicked:
                    {
                        outDisplay.text= textField.text;
                        outDisplay.visible = true;
                    }
                }
            }
        }

        Text{
            id: outDisplay
            property string textColor: "#FFFFFF"

            Layout.preferredHeight: implicitHeight
            Layout.preferredWidth: repository.width*(8/10)
            Layout.alignment: Qt.AlignCenter

            visible: false
            color: textColor
            clip: true

            text: qsTr("")
            font.family: "Arial"
            font.italic: true
            font.pointSize: 20
            horizontalAlignment: Text.AlignHCenter

            onTextChanged:
            {
                visible = true;
                if(text.length > 13)
                    font.pointSize = 18;
                else
                    font.pointSize = 24;
            }

            onColorChanged:
            {
                if(textField.focus)
                    textField.color = textColor;
            }
        }

        RowLayout
        {
            id: setColours
            Layout.alignment: Qt.AlignHCenter
            spacing: 1

            Rectangle
            {
                id: button1
                property string bcolor: "#333399"
                height: 20
                width: 20
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button2
                property string bcolor: "#3366CC"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button3
                property string bcolor: "#9966FF"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button4
                property string bcolor: "#FF33CC"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button5
                property string bcolor: "#33FFAD"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button6
                property string bcolor: "#BBFF33"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button7
                property string bcolor: "#E68A00"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button8
                property string bcolor: "#FFFFFF"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button9
                property string bcolor: "#808080"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }

            Rectangle
            {
                id: button10
                property string bcolor: "#000000"
                height: button1.height
                width: button1.width
                color: bcolor

                MouseArea
                {
                    anchors.fill: parent

                    onClicked:
                    {
                        outDisplay.textColor = parent.bcolor;
                    }
                }
            }
        }
    }
}
