/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(instance_exists(oEndBossHealthBar) and instance_exists(oEndBossHealthBarBorder)){
	oEndBossHealthBar.x = oCamera.x + bossHealthOffsetX+3;
	oEndBossHealthBar.y = oCamera.y + bossHealthOffsetY+3;
	oEndBossHealthBarBorder.x = oCamera.x + bossHealthOffsetX;
	oEndBossHealthBarBorder.y = oCamera.y + bossHealthOffsetY;
}