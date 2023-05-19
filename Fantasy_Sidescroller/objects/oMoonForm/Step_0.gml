// Inherit the parent event
event_inherited();

if(mouse_check_button(mb_left)) && (moonCatched = 1){
	moonCatched = 0;
	with(instance_create_layer(x, y-10, "Projectiles", oMoon)){
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
