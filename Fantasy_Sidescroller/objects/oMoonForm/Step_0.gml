// Inherit the parent event
event_inherited();
if(mouse_check_button_pressed(mb_left) and extraJumpDelay <= 0){
	individualx = lengthdir_x(25, point_direction(x, y, mouse_x, mouse_y)-180);
	individualy = lengthdir_y(6, point_direction(x, y, mouse_x, mouse_y)-180);
	extraJumpDelay = 60;
}

if(extraJumpDelay > 0){
	extraJumpDelay--;
}
if(individualx<1 and individualx>-1){
	individualx = 0;
}else if(individualx < 0){
	individualx++;
}else if(individualx > 0){
	individualx--;
}
if(individualy<1 and individualy>-1){
	individualy = 0;
}else if(individualy < 0){
	individualy++;
}else if(individualy > 0){
	individualy--;
}