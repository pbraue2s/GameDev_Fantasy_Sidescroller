/// @bewegung
vsp = vsp+grv;

// Angst zu Fallen
if(aufdemboden)&&(Fallangst)&&(!place_meeting(x+hsp,y+1,oMapObject))
{
	hsp= -hsp;

}
// diagonal
if (place_meeting(x+hsp,y,oMapObject))
{
	while(!place_meeting(x+sign(hsp),y,oMapObject))
	{
		x= x+sign(hsp);
	}
	hsp= -hsp;
}
x= x+hsp;
if (!place_meeting(x,y+1,oMapObject))
{
	aufdemboden = false;
	
}
else
{
	aufdemboden = true;
}

//vertikal

if(place_meeting(x,y+vsp,oMapObject))
{
	while(!place_meeting(x,y+sign(vsp),oMapObject))
	{
		y = y+ sign(vsp);
	}
	vsp=0;
}
y=y+vsp;

if(hp<=0)
{
	with(meinewaffe)
	{
		instance_destroy();
	}
	instance_destroy();
	audio_play_sound(tot,1,false);
}