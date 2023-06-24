if(sprite_index == sEndScene and image_index > 43){
	sprite_index = sEnd;
}
if(sprite_index == sEnd){
	if(keyboard_check_pressed(ord("R"))){
		global.redGem = 0; 
		global.greenGem = 0; 
		global.blueGem = 0;
		game_restart();
	}
	if(keyboard_check_pressed(ord("E"))){
		game_end();
	}
}