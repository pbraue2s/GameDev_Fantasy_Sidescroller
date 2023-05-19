weapon.y = y + weaponYoffset;
if(image_xscale > 0){
	weapon.x = x + weaponXoffset;
}else{
	weapon.x = x - weaponXoffset;
}

weapon.image_xscale = image_xscale;