/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event

event_inherited();
dmgIncomeDelay--;


	
	if(place_meeting(x,y,oExplosion1))  && (mouse_check_button(mb_right)){
	
	audio_play_sound(mShield,10,false);
	}
if(!mouse_check_button(mb_right)){
	if(place_meeting(x, y, oEnemySmall)) && (dmgIncomeDelay < 0){
		dmgIncomeDelay = 50;
		audio_play_sound(mHitHero,10,false);
		health--;
	}
	if(place_meeting(x,y,oExplosion1))  && (dmgIncomeDelay < 0){
		dmgIncomeDelay = 50;
		audio_play_sound(mHitHero,10,false);
		health--;
		instance_create_layer(x,y , "Fireball",oExplosion );
	}
	if(place_meeting(x, y, oEnemySword)) && (dmgIncomeDelay < 0){
		dmgIncomeDelay = 50;
		audio_play_sound(mHitHero,10,false);
		health--;
	}
}
if(place_meeting(x,y,oNWall)){
	health--;
	audio_play_sound(mHitHero,10,false);
	x = 1150;
	y = 1851;
}

