x = oPlayerPlaceholder4.x - 7;
y = oPlayerPlaceholder4.y - 5;



image_angle = point_direction(x,y,mouse_x,mouse_y);
firingdelay = firingdelay - 1
if(mouse_check_button(mb_left)) && (firingdelay<0)
{
	firingdelay = 25;
	with (instance_create_layer(x,y-10,"Waffe",Geschoss4))
	{
		speed = 10;
		direction = other.image_angle;
		image_angle = direction;
	}	
}