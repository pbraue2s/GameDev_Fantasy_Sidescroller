/// @description add Health

/// @description Movement

keyLeft = keyboard_check(vk_left);
if(keyLeft == 0) keyLeft = keyboard_check(ord("A"));
keyRight = keyboard_check(vk_right);
if(keyRight == 0) keyRight = keyboard_check(ord("D"));
keyUp = keyboard_check(vk_up);
if(keyUp == 0) keyUp = keyboard_check(ord("W"));
keyDown = keyboard_check(vk_down);
if(keyDown == 0) keyDown = keyboard_check(ord("S"));
keySpace = keyboard_check(vk_space);

var move = keyRight - keyLeft;
if(keyUp > keySpace){
	var climb = keyDown - keyUp
}else{
	var climb = keyDown - keySpace
}
//Movement
// left right
hsp = move * walksp;

// gravity
vsp = vsp + currentGrv;

// jumping
if(place_meeting(x, y+1, oMapObject)) && ((keySpace)||(keyUp)){
	vsp = -10;

	audio_play_sound(sprung,1,false);

}

currentGrv = mapGrv;
vsp += currentGrv;


//facing direction
if(hsp != 0) image_xscale = sign(hsp);
//Horizontale Kollision
if(place_meeting(x+hsp, y, oMapObject)){
	while(!place_meeting(x+sign(hsp), y, oMapObject)){
		x += sign(hsp);
	}
	hsp=0;
}
x += hsp;
//Vertikale Kollision
if(place_meeting(x, y+vsp, oMapObject)){
	while(!place_meeting(x, y+sign(vsp), oMapObject)){
		y += sign(vsp);
	}
	vsp=0;
}
y += vsp;


// Hearths
if(health == 3){
	oHearts.image_index = 0;
}else if(health == 2){
	oHearts.image_index = 1;
}else if(health == 1){
	oHearts.image_index = 2;
}else if(health == 0){
	room_goto(Bibliothek)
}

//Animation
if(!place_meeting(x,y+1,oMapObject)){

	
	sprite_index=sChar4;
	image_speed=0;
	if(sign(vsp)>0)image_index=1; else image_index=0;
	

	
	
}
else
{
	image_speed=1;
	if(hsp==0)
	{
		sprite_index=sChar4;
	}
	else
	{
		sprite_index= sChar4l;
	}
}
if(hsp!=0) image_xscale = sign(hsp);
if(place_meeting(x,y,oHWall)){
	
	instance_destroy(oHWall);
	instance_destroy(oSleepBoss);
	instance_create_layer(1040,1320, "Player",oBossTrigger)
	
	}
if(y>4970)
{
	x = 130;
	y = 4900;
	health = health-1;
}
