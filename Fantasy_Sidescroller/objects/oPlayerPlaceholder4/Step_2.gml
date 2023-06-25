/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(instance_exists(oEndBossHealthBar) and instance_exists(oEndBossHealthBarBorder)){
	oEndBossHealthBar.x = oCamera.x + bossHealthOffsetX+3;
	oEndBossHealthBar.y = oCamera.y + bossHealthOffsetY+3;
	oEndBossHealthBarBorder.x = oCamera.x + bossHealthOffsetX;
	oEndBossHealthBarBorder.y = oCamera.y + bossHealthOffsetY;
}
if(instance_exists(oBossHealthBarLev3) and instance_exists(oBossHealthBarBorderLev3)){
	oBossHealthBarLev3.x = oCamera.x + bossHealthOffsetX+3;
	oBossHealthBarLev3.y = oCamera.y + bossHealthOffsetY+3;
	oBossHealthBarBorderLev3.x = oCamera.x + bossHealthOffsetX;
	oBossHealthBarBorderLev3.y = oCamera.y + bossHealthOffsetY;
}

