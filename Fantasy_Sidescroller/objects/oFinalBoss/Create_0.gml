//Atributte
hp=200;
teleportdelay=1000;
teleportzone=2; 

image_xscale=0.8;
image_yscale=0.8;
dmgIncomeDelay=0;

meinewaffe1 = instance_create_layer(x+90,y-20,"Waffe",oBossWaffe3);	
	with(meinewaffe1)
	{
		owner = other.id;
	}
meinewaffe2 = instance_create_layer(x+230,y-50,"Waffe",oBossWaffe2);	
	with(meinewaffe2)
	{
		owner = other.id;
	}
meinewaffe3 = instance_create_layer(x+370,y-20,"Waffe",oBossWaffe1);	
	with(meinewaffe3)
	{
		owner = other.id;
	}	