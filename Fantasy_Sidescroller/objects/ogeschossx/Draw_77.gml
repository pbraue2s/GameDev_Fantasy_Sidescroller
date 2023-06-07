/// @zeichnen
if (place_meeting(x,y,oMapObject)) instance_destroy();
if (place_meeting(x,y,oPlayerPlaceholder4))
{
	instance_destroy();
	with(oPlayerPlaceholder4)
	{
	health = health -1;
	}
}