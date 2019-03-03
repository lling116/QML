import QtQuick 2.2
import QtQuick.Controls 1.2
Rectangle{
	width: 320;
	height: 240;
	color:"gray";
	Text{
		id: text1;
	    anchors.horizontalCenter: parent.horizontalCenter;
		anchors.top:parent.top;
		anchors.topMargin:20;
	    text:"Text one!";
	    color:"blue";
	    font.pixelSize:28;
		
	}
	
    Text{
		id: text2;
	    anchors.horizontalCenter: parent.horizontalCenter;
		anchors.top:text1.bottom;
		anchors.topMargin:8;
	    text:"Text two!";
	    color:"blue";
	    font.pixelSize:28;
		
	}

	
	Button{
	    id:changeButton;
		anchors.top: text2.bottom;
		anchors.topMargin: 8;
		anchors.horizontalCenter: parent.horizontalCenter;
		text:"change";
	
	}
	
	Connections{
	    target:changeButton;
		onClicked:{
		    text1.color = "yellow";
			text2.color = "red";
		}
	}
}