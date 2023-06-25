if(hp<=0)
{
	with(instance_create_layer(128, 1440, "Waffe", oMathGem)){
		image_xscale = 2.75;
		image_yscale = 2.6;
	}
	with(meinewaffe)
	{
		instance_destroy();
	}
	instance_destroy();
	instance_destroy(oBossHealthBarBorderLev3)
	instance_destroy(oBossHealthBarLev3)
	audio_play_sound(tot,0.5,false);
}