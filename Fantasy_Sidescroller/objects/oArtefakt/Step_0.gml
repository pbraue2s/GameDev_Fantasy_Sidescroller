/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

if(global.blueGem == 1 and global.redGem == 1 and global.greenGem == 1){
	event_inherited();
}

if(global.blueGem == 1){
	if(!instance_exists(oBlueGem)){
		instance_create_layer(1010, 918,"Walls", oBlueGem)
	}
}

if(global.redGem == 1){
	if(!instance_exists(oRedGem)){
		instance_create_layer(1022, 918,"Walls", oRedGem)
	}
}

if(global.greenGem == 1){
	if(!instance_exists(oGreenGem)){
		instance_create_layer(1034, 918,"Walls", oGreenGem)
	}
}
