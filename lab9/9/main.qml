import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.3
import Qt.labs.platform 1.1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Lab 9")

    Rectangle {
        width: 200
        height: 200
        color: "#880000"
        anchors.top: parent.top

        Text {
           text: "6.1218-2"
           color: "white"
           anchors.fill: parent
           horizontalAlignment: Text.AlignHCenter
           verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        width: 200
        height: 200
        color: "#FF0000"
        anchors.right: parent.right

        Text {
           text: "<a href=\"https://www.qt.io\">https://www.qt.io</a>"
           anchors.fill: parent
           horizontalAlignment: Text.AlignHCenter
           verticalAlignment: Text.AlignVCenter

           MouseArea {
               onClicked: Qt.openUrlExternally('https://www.qt.io')
               hoverEnabled: true
               anchors.fill: parent
               cursorShape: containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor
           }
        }
    }

    Rectangle {
        width: 200
        height: 200
        color: "#00FF00"
        anchors.bottom: parent.bottom

        Text {
           text: "color: '#00FF00''"
           anchors.fill: parent
           horizontalAlignment: Text.AlignHCenter
           verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        width: 200
        height: 200
        color: "#008800"
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        Text {
            text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce tempor nibh leo, rhoncus lacinia felis maximus dapibus. Sed ac libero tellus. Vestibulum varius at diam nec varius."
            color: "white"
            wrapMode: Text.Wrap
            width: 200
            height: 200
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: royalblue
        width: 200
        height: 200
        color: "royalblue"
        radius: 25
        rotation: -45
        anchors.centerIn: parent

        Text {
            text: "Куц Дмитрий Игоревич"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.weight: Font.Bold
            font.italic: true
            font.pointSize: 14
            wrapMode: Text.Wrap
        }
    }

    Button {
        id: exitButton
        x: parent.width / 1.95
        y: parent.height / 1.07
        text: "Exit"
        Layout.alignment: Qt.AlignHCenter
        background: Rectangle {
            implicitWidth: 100
            implicitHeight: 25
            border.color: "#888"
            radius: 4
        }
        MouseArea {
            hoverEnabled: true
            anchors.fill: parent
            cursorShape: containsMouse ? Qt.PointingHandCursor : Qt.ArrowCursor
            onClicked: Qt.quit()
        }
    }

//    colors
    Item {
        x: parent.width / 3
        y: parent.height / 1.05
//        anchors.topMargin: -115

        Rectangle {
            id: redColor
            width: 15
            height: 15
            anchors.left: brownColor.right;
            color: 'red'

            MouseArea {
                id: mouseAreaRedColor
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPressed: {
                    var newColor = 'red'
                    if (mouseAreaRedColor.pressedButtons & Qt.RightButton) {
                        newColor = Qt.lighter(newColor, 1.1)
                    }
                    royalblue.color = newColor;
                }
            }
        }

        Rectangle {
            id: brownColor
            width: 15
            height: 15
            anchors.left: yellowColor.right;
            color: 'orange'

            MouseArea {
                id: mouseAreaBrownColor
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPressed: {
                    var newColor = 'orange'
                    if (mouseAreaBrownColor.pressedButtons & Qt.RightButton) {
                        newColor = Qt.lighter(newColor, 1.1)
                    }
                    royalblue.color = newColor;
                }
            }
        }

        Rectangle {
            id: yellowColor
            width: 15
            height: 15
            anchors.left: greenColor.right;
            color: 'yellow'

            MouseArea {
                id: mouseAreaYellowColor
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPressed: {
                    var newColor = 'yellow'
                    if (mouseAreaYellowColor.pressedButtons & Qt.RightButton) {
                        newColor = Qt.lighter(newColor, 1.1)
                    }
                    royalblue.color = newColor;
                }
            }
        }

        Rectangle {
            id: greenColor
            width: 15
            height: 15
            anchors.left: pinkColor.right;
            color: 'green'

            MouseArea {
                id: mouseAreaGreenColor
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPressed: {
                    var newColor = 'green'
                    if (mouseAreaGreenColor.pressedButtons & Qt.RightButton) {
                        newColor = Qt.lighter(newColor, 1.1)
                    }
                    royalblue.color = newColor;
                }
            }
        }

        Rectangle {
            id: pinkColor
            width: 15
            height: 15
            anchors.left: darkSlateBlueColor.right;
            color: 'turquoise'

            MouseArea {
                id: mouseAreaPinkColor
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPressed: {
                    var newColor = 'turquoise'
                    if (mouseAreaPinkColor.pressedButtons & Qt.RightButton) {
                        newColor = Qt.lighter(newColor, 1.1)
                    }
                    royalblue.color = newColor;
                }
            }
        }

        Rectangle {
            id: darkSlateBlueColor
            width: 15
            height: 15
            anchors.left: purpleColor.right;
            color: 'blue'

            MouseArea {
                id: mouseAreaDarkSlateBlueColor
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPressed: {
                    var newColor = 'blue'
                    if (mouseAreaDarkSlateBlueColor.pressedButtons & Qt.RightButton) {
                        newColor = Qt.lighter(newColor, 1.1)
                    }
                    royalblue.color = newColor;
                }
            }
        }

        Rectangle {
            id: purpleColor
            width: 15
            height: 15
            color: 'purple'

            MouseArea {
                id: mouseAreaPurpleColor
                anchors.fill: parent
                acceptedButtons: Qt.LeftButton | Qt.RightButton

                onPressed: {
                    var newColor = 'purple'
                    if (mouseAreaPurpleColor.pressedButtons & Qt.RightButton) {
                        newColor = Qt.lighter(newColor, 1.1)
                    }
                    royalblue.color = newColor;
                }
            }
        }
    }
}
