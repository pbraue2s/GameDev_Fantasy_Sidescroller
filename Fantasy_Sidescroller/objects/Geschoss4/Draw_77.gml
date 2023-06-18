/// @zeichnen
if (place_meeting(x,y,oMapObject)) 
{
	instance_destroy();
	
audio_play_sound(waffetreffer,2,false);
}
if (place_meeting(x,y,oEnemyX))
{
	instance_destroy();
	audio_play_sound(waffetreffer,2,false);
}	
