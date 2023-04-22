if(enemyMaxHealth <= 0){
	instance_destroy();
}
if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
}
if(place_meeting(x,y,oMoon) and dmgIncomeDelay == 0){
	enemyMaxHealth--;
	dmgIncomeDelay = 20;
}
if(place_meeting(x,y,oSunSwort) and dmgIncomeDelay == 0 and oSunSwort.image_index != 0){
	enemyMaxHealth -= 2;
	dmgIncomeDelay = 20;
}
