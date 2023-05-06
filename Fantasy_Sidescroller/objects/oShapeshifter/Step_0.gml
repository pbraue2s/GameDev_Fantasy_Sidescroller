// Inherit the parent event
event_inherited();

if(transform > 0){
	transform--;	
}

if(place_meeting(x,y,oOutOfMap)){
	health--;
	x = 816;
	y = 1851;
}

if(place_meeting(x+hsp, y, oJumpBlock) or (place_meeting(x-1, y, oJumpBlock) and keyLeft) or (place_meeting(x+1, y, oJumpBlock) and keyRight)){
	y -= 20;
}