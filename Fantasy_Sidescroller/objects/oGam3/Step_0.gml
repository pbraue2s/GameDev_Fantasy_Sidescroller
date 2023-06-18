/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(place_meeting(x, y, oPlayerLev1)){
     instance_destroy(oCloseDoor) 
	  audio_play_sound(mPickup2,10,false);
	instance_create_layer(5456,1552, "Player",oOpenDoor)
	instance_create_layer(5408,1472,"Nicht_Sichtbar",oEndWall)
	instance_create_layer(5440,1472,"Nicht_Sichtbar",oEndWall)
	instance_create_layer(5408,1504 ,"Nicht_Sichtbar",oEndWall)
	instance_create_layer(5440,1504,"Nicht_Sichtbar",oEndWall)
	instance_create_layer(5408,1536,"Nicht_Sichtbar",oEndWall)
	instance_create_layer(5440,1536,"Nicht_Sichtbar",oEndWall)
	instance_create_layer(5408,1568 ,"Nicht_Sichtbar",oEndWall)
	instance_create_layer(5440,1568,"Nicht_Sichtbar",oEndWall)
	
	global.greenGem = 1;
	
	
	
   instance_destroy();
}