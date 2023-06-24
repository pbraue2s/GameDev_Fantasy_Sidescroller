/// @description Boss Health Bar fixed to Camera
if(instance_exists(oBossHealthBar) and instance_exists(oBossHealthBarBorder)){
	oBossHealthBar.x = oCamera.x + bossHealthOffsetX+3;
	oBossHealthBar.y = oCamera.y + bossHealthOffsetY+3;
	oBossHealthBarBorder.x = oCamera.x + bossHealthOffsetX;
	oBossHealthBarBorder.y = oCamera.y + bossHealthOffsetY;
}
if(instance_exists(oEndBossHealthBar) and instance_exists(oEndBossHealthBarBorder)){
	oEndBossHealthBar.x = oCamera.x + bossHealthOffsetX+3;
	oEndBossHealthBar.y = oCamera.y + bossHealthOffsetY+3;
	oEndBossHealthBarBorder.x = oCamera.x + bossHealthOffsetX;
	oEndBossHealthBarBorder.y = oCamera.y + bossHealthOffsetY;
}