/// @description add animation

// Inherit the parent event
event_inherited();

//Animation
if(place_meeting(x,y+1,oWall)){

	image_speed= 1;
	if(hsp==0){
	sprite_index=sPlayerLev1;
	
	}
	else{
	sprite_index= sPlayerLev1R;
	}
}

