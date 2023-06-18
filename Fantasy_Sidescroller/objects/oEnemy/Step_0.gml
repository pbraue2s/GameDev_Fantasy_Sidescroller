/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(dmgIncomeDelay > 0){
	dmgIncomeDelay--;
}
if(place_meeting(x,y,oMoon) and dmgIncomeDelay == 0){
	audio_play_sound(mHitMoon,10,false);
	enemyMaxHealth--;
	dmgIncomeDelay = 20;
	dmgIncomeFrame = 5;
	image_index = 1;
}
if(place_meeting(x,y,oSunSwort) and dmgIncomeDelay == 0 and oSunSwort.image_index != 0){
	audio_play_sound(mHitSword,10,false);
	enemyMaxHealth -= 2;
	dmgIncomeDelay = 20;
	dmgIncomeFrame = 5;
	image_index = 1;
}