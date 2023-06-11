/// @description weapon following character
// Inherit the parent event
event_inherited();
weapon.y = y + weaponYoffset;
if(image_xscale > 0){
	weapon.x = x + weaponXoffset;
	weapon.image_angle = 345;
}else{
	weapon.x = x - weaponXoffset;
	weapon.image_angle = 15;
}

weapon.image_xscale = image_xscale;
