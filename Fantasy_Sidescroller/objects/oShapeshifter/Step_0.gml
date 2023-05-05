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