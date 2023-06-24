/// @description Hier Beschreibung einfügen
// Sie können Ihren Code in diesem Editor schreiben
if(image_index > 7){
	audio_play_sound(mBossDeath,10,false)
	audio_stop_sound(mStorm)
	
	audio_stop_sound(mBossFight1);
	audio_play_sound(mLev2,10,true);
	if(instance_exists(oBossStorm)) then instance_destroy(oBossStorm);
	instance_create_layer(x,y,"Player", oGem);
	instance_destroy();
}