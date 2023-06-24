/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(global.blueGem == 1 and global.redGem == 1 and global.greenGem == 1){
	event_inherited();
}

if(global.blueGem == 1){
	if(!instance_exists(oBlueGem)){
		instance_create_layer(1033, 642,"PrimaryElements", oBlueGem)
	}
}

if(global.redGem == 1){
	if(!instance_exists(oRedGem)){
		instance_create_layer(1011, 642,"PrimaryElements", oRedGem)
	}
}

if(global.greenGem == 1){
	if(!instance_exists(oGreenGem)){
		instance_create_layer(1022, 644,"PrimaryElements", oGreenGem)
	}
}
