//Atributte
hp=200;
max_hp=200;

teleportdelay=0;
teleportzone = 2; 
meinewaffe1 = instance_create_layer(x,y,"Waffe",oBossWaffe3);	
	with(meinewaffe1)
	{
		owner = other.id;
	}
meinewaffe2 = instance_create_layer(x+140,y-30,"Waffe",oBossWaffe2);	
	with(meinewaffe2)
	{
		owner = other.id;
	}
meinewaffe3 = instance_create_layer(x+280,y,"Waffe",oBossWaffe1);	
	with(meinewaffe3)
	{
		owner = other.id;
	}	