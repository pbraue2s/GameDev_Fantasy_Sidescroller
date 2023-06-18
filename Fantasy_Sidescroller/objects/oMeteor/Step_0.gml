if(place_meeting(x,y,oMapObject)){
	audio_play_sound(mExplo,10,false)
	instance_destroy();
}
if(place_meeting(x,y,oShapeshifter)){
	with(oShapeshifter){
		if(dmgIncomeDelay == 0){
			audio_play_sound(mDamageHero,10,false)
			health--;
			dmgIncomeDelay = maxDmgIncomeDelay;
		}
	}
	instance_destroy();
}