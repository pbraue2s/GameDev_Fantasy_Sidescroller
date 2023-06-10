/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event

event_inherited();
--dmgIncomeDelay
/*if( keyboard_check(vk_down)  || keyboard_check(vk_left)||keyboard_check(vk_right)||keyboard_check(vk_up)){
audio_play_sound(mWalking,10,false);
}*/

if(!mouse_check_button(mb_right)){
	if(place_meeting(x, y, oEnemySmall)) && (dmgIncomeDelay < 0){
		
        sprite_index = sPlayerLev1RDamage; // Set the sprite of the game character to sPlayerLev1R (animation)
   
		dmgIncomeDelay = 50;
		health--;
	}
	if(place_meeting(x,y,oExplosion1))  && (dmgIncomeDelay < 0){
	
        sprite_index = sPlayerLev1RDamage; // Set the sprite of the game character to sPlayerLev1R (animation)
    
		dmgIncomeDelay = 50;
		health--;
		instance_create_layer(x,y , "Fireball",oExplosion );
	}
	if(place_meeting(x, y, oEnemySword)) && (dmgIncomeDelay < 0){
		
        sprite_index = sPlayerLev1RDamage; // Set the sprite of the game character to sPlayerLev1R (animation)
 
		dmgIncomeDelay = 50;
		health--;
	}
}
if(place_meeting(x,y,oNWall)){
	 if (hsp == 0) { // Check if the horizontal speed (hsp) is 0
        sprite_index = sPlayerLev1Damage; // Set the sprite of the game character to sPlayerLev1 (animation)
    } else {
        sprite_index = sPlayerLev1RDamage; // Set the sprite of the game character to sPlayerLev1R (animation)
    }
	health--;
	x = 1150;
	y = 1851;
}

