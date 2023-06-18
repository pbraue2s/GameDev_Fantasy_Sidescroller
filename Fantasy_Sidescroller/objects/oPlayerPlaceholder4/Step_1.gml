/// @description Combat
//Damage if run into spike
--dmgIncomeDelay
if(place_meeting(x, y, oSpike)) && (dmgIncomeDelay < 0){
	dmgIncomeDelay = 25;
	health--;
}
