/// @besitzer
x = owner.x;
y = owner.y+10;

image_yscale= -image_yscale;

if(instance_exists(oPlayerPlaceholder4))
{
	if(oPlayerPlaceholder4.x <x)
	{
		image_yscale= -image_yscale;
	}
	if(point_distance(oPlayerPlaceholder4.x,oPlayerPlaceholder4.y,x,y)<600)
	{
		image_angle =point_direction(x,y,oPlayerPlaceholder4.x,oPlayerPlaceholder4.y);
		countdown--;
		if(countdown<=0)
		{
			countdown = countdownrate;
			//schusscodde
		
			with(instance_create_layer(x,y+10,"Waffe",oBossgeschoss))
			{
				speed=5;
				direction =other.image_angle + random_range(-1,1);
				image_angle = direction;
			}
		}
	}

}
