/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(image_index > 7){
	with(oCharacter){
		room_goto(Sun);
	}
	audio_play_sound(mBossDeath,10,false)
	audio_stop_sound(mStorm)
	
	audio_stop_sound(mBossFight1);
	audio_play_sound(mLev2,10,true);
	instance_destroy();
}