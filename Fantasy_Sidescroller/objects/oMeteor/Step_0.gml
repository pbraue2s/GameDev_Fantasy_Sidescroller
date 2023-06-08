if(place_meeting(x,y,oMapObject)){
	instance_destroy();
}
if(place_meeting(x,y,oShapeshifter)){
	with(oShapeshifter){
		if(dmgIncomeDelay == 0){
			health--;
			dmgIncomeDelay = maxDmgIncomeDelay;
		}
	}
	instance_destroy();
}