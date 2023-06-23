/// @zeichnen
if (place_meeting(x,y,oMapObject)) 
{
instance_destroy();

}
if (place_meeting(x,y,oLevelCharacter))
{
	instance_destroy();
	with(oLevelCharacter)
	{
	health = health -1;
	}
	
}