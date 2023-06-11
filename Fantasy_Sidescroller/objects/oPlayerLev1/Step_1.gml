/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben

// Inherit the parent event

event_inherited();
dmgIncomeDelay--;
/*if((dmgIncomeDelay > 10 && dmgIncomeDelay < 20) || (dmgIncomeDelay > 30 && dmgIncomeDelay < 40)&& (hsp == 0) ){
	
	image_index = 1;
}else{
	image_index = 0;

}*/

/*if( keyboard_check(vk_down)  || keyboard_check(vk_left)||keyboard_check(vk_right)||keyboard_check(vk_up)){
audio_play_sound(mWalking,10,false);
}*/

if(!mouse_check_button(mb_right)){
	if(place_meeting(x, y, oEnemySmall)) && (dmgIncomeDelay < 0){
		
     
   
		dmgIncomeDelay = 50;
		
		health--;
	}
	if(place_meeting(x,y,oExplosion1))  && (dmgIncomeDelay < 0){
	
        
    
		dmgIncomeDelay = 50;
		health--;
		instance_create_layer(x,y , "Fireball",oExplosion );
	}
	if(place_meeting(x, y, oEnemySword)) && (dmgIncomeDelay < 0){
		
        
 
		dmgIncomeDelay = 50;
		health--;
	}
}
if(place_meeting(x,y,oNWall)){
	 
	health--;
	x = 1150;
	y = 1851;
}

