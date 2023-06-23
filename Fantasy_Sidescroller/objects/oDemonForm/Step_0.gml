// Inherit the parent event
event_inherited();
// catching moon from MoonForm
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

if(weaponDelay != 0) weaponDelay--;
if(swingTime != 0)swingTime--;

//hit
with(oSunSwort){
	if(image_index == 1) image_index = 2;
	if(image_index == 2) image_index = 3;
	if(image_index == 3 and other.swingTime == 0){
		image_index = 0;
	}
}

if(mouse_check_button(mb_left) and weaponDelay == 0){
	with(oSunSwort){
		audio_play_sound(mSword1,10,false);
		image_index = 1;
	}
	swingTime = 5;
	weaponDelay = 20;
}
//run animation
if (place_meeting(x, y + 1, oMapObject)) {
    image_speed = 1;
    if (hsp == 0) {
        sprite_index = sSunForm;
    } else {
        sprite_index = sSunFormRun; 
    }
}
// jump animation
if (vsp < 0) {
    if(sprite_index == sSunForm or sprite_index == sSunFormRun){
		sprite_index = sSunFormJump;
		image_index = 0;
	}else if(sprite_index == sSunFormJump and image_index == 0){
		image_index = 1;
	}else if(sprite_index == sSunFormJump and image_index == 1){
		image_index = 2;
	}
}else if(vsp > 0){
	sprite_index = sSunFormJump;
	image_index = 3;
}else if(place_meeting(x, y + 1, oMapObject) and sprite_index == sMoonFormJump){
	sprite_index = sSunForm
}



