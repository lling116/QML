import QtQuick 2.2
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

Rectangle{
    width: 320;
	height: 480;
    color:"gray";
	
	Button{
	   text:"Quit";
	   anchors.centerIn:parent;
       style:ButtonStyle{
	        background:Rectangle{
		        implicitWidth:70;
			    implicitHeight:25;
			    border.width:control.pressed ?2:1;
			    border.color:(control.hovered || control.pressed)
			           ?"green":"blue";
			 
		   }
	   }
	     onClicked:Qt.quit(); 
	}

}