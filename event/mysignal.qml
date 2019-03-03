mport QtQuick 2.2
//import QtQuick.Controls 1.1

Rectangle {
    width: 320;
    height: 240;
    color: "#C0C0C0";
    
    Text {
        id: coloredText;
        anchors.horizontalCenter: parent.horizontalCenter;
        anchors.top: parent.top;
        anchors.topMargin: 4;
        text: "Hello World!";
        font.pixelSize: 32;
    }
    
    Component {
        id: colorComponent;
        Rectangle {
            id: colorPicker;
            width: 50;
            height: 30;
            signal colorPicked(color clr);//自定义信号
			//鼠标作用的区域
            MouseArea {
                anchors.fill: parent
                onPressed: colorPicker.colorPicked(colorPicker.color);
            }
			
        }
    }
    
    Loader{
        id: redLoader;
        anchors.left: parent.left;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        sourceComponent: colorComponent;
        onLoaded:{
            item.color = "red";
        }
    }
    
    Loader{
        id: blueLoader;
        anchors.left: redLoader.right;
        anchors.leftMargin: 4;
        anchors.bottom: parent.bottom;
        anchors.bottomMargin: 4;
        sourceComponent: colorComponent;
        onLoaded:{
            item.color = "blue";
        }
    }
    
    Connections {
        target: redLoader.item;
        onColorPicked:{onColorPicked
            coloredText.color = clr;
        }
    }
    
    Connections {
        target: blueLoader.item;
        onColorPicked:{
            coloredText.color = clr;
        }
    }
}
