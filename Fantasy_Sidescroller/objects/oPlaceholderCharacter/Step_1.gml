/// @description Combat
--FireDelay;

if(mouse_check_button(mb_left)) && (FireDelay < 0){
	FireDelay = 20;
	var xCoord = x-24;
	var yCoord = y-12;
	with(instance_create_layer(xCoord, yCoord, "Fireball", oFireball)){
		speed = 15;
		direction = point_direction(xCoord, yCoord, mouse_x, mouse_y);
	}
}

//Damage if run into spike
--dmgIncomeDelay
if(place_meeting(x, y, oSpike)) && (dmgIncomeDelay < 0){
	dmgIncomeDelay = 25;
	health--;
}
