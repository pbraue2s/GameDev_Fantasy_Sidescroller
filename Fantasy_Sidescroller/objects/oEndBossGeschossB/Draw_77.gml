/// @zeichnen
if (place_meeting(x,y,oMapObject)) 
{
instance_destroy();

}
if (place_meeting(x,y,oPlayerLev1))
{
	instance_destroy();
	with(oPlayerLev1)
	{
		if(!mouse_check_button(mb_right)){
			health = health -1;	
		}
	}
}
if (place_meeting(x,y,oShapeshifter))
{
	instance_destroy();
	with(oShapeshifter)
	{
		
			health = health -1;
	
		
	}
	
}
if (place_meeting(x,y,oPlayerPlaceholder4))
{
	instance_destroy();
	with(oPlayerPlaceholder4)
	{
		
			health = health -1;
	
		
	}
	
}