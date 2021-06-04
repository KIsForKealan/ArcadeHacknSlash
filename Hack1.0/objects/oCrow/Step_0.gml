
switch (state)
{
	case "chase":
		#region
		
		if not instance_exists(oSkeleton) break;;
		
		if place_meeting(x, y, oSkeleton) and oSkeleton.state != "roll" and attacked == false
		{
			CreateHitbox(x, y, self, sprite_index, knockback, 1, damage, image_xscale);
			attacked = true;
		}
		
		if attacked == true
		{
			vspeed = -1;	
		}
		
		#endregion
		break;
		
	case "death":
		#region
		repeat (6)
		{
			instance_create_layer(x+random_range(-4, 4), y-16+random_range(-4, 4), "Effects", oFeather);	
		}
		instance_destroy();
		#endregion
		break;
}