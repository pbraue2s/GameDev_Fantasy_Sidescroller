// Inherit the parent event
event_inherited();
if(mouse_check_button(mb_left)) && (moonCatched = 1){
	moonCatched = 0;
	with(instance_create_layer(x, y-10, "Projectiles", oMoon)){
		audio_play_sound(mKnife,10,false);
		speed = 35;
		direction = point_direction(x, y, mouse_x, mouse_y);
	}
}
if(moonCatched == 0){
	with(oMoon){
		speed--;
		if(speed < 0 or (speed > 0 and place_meeting(x,y,oMapObject))){
			if(speed>0) speed = 0;
			direction = point_direction(x, y, oCharacter.x, oCharacter.y)-180;
			if(place_meeting(x,y,oCharacter)){
				other.moonCatched = 1;
				instance_destroy();
			}		
		}
	}
}
//run animation
if (place_meeting(x, y + 1, oMapObject)) {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sMoonForm;
    } else {
        sprite_index = sMoonFormRun; 
    }
}
// jump animation
if (vsp < 0) {
    if(sprite_index == sMoonForm or sprite_index == sMoonFormRun){
		sprite_index = sMoonFormJump;
		image_index = 0;
	}else if(sprite_index == sMoonFormJump and image_index == 0){
		image_index = 1;
	}else if(sprite_index == sMoonFormJump and image_index == 1){
		image_index = 2;
	}
}else if(vsp > 0){
	sprite_index = sMoonFormJump;
	image_index = 3;
}else if(place_meeting(x, y + 1, oMapObject) and sprite_index == sMoonFormJump){
	sprite_index = sMoonForm
}