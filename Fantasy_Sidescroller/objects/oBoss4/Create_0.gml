hp=25;
grv = 0.2
vsp =0;
walksp = 2;
hsp = walksp;

if(hatwaffe)
{
	meinewaffe = instance_create_layer(x-50,y-10,"Waffe",oBosswaffe);	
	with(meinewaffe)
	{
		owner = other.id;
	}
}
