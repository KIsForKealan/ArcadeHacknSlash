
event_inherited();

state = "chase";
hp = 1;
hpMax = hp;

image_speed = 0.5;
hspeed = random_range(2,3);

if instance_exists(oSkeleton)
{
	hspeed *= sign(oSkeleton.x - x);	
}
image_xscale = sign(hspeed);

damage = 5;
knockback = 4;
attacked = false;
EXP = 2;