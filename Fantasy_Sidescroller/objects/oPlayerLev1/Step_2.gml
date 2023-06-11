/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
weapon.y = y + weaponYoffset;
if(image_xscale > 0){
    weapon.x = x + weaponXoffset;
}else{
    weapon.x = x - weaponXoffset;
}

weapon.image_xscale = image_xscale;
if(ShieldB ==true){
	



shield.y = y + shieldYoffset;
if(image_xscale > 0){
    shield.x = x + shieldXoffset;
}else{
    shield.x = x - shieldXoffset;
}

shield.image_xscale = image_xscale;
}
if(instance_exists(oBossHealthBarLev1) and instance_exists(oBossHealthBarBorderLev1)){
	oBossHealthBarLev1.x = oCamera.x + bossHealthOffsetX+3;
	oBossHealthBarLev1.y = oCamera.y + bossHealthOffsetY+3;
	oBossHealthBarBorderLev1.x = oCamera.x + bossHealthOffsetX;
	oBossHealthBarBorderLev1.y = oCamera.y + bossHealthOffsetY;
}