

function BossChaseState(){
	
	if not instance_exists(oSkeleton) exit;
		
	var _directionFacing = image_xscale;
	var _distanceToPlayer = point_distance(x, y, oSkeleton.x, oSkeleton.y);
	
	if _distanceToPlayer <= attackRange and _distanceToPlayer > backupRange
	{
		state = "attack";	
	}
	
	if _distanceToPlayer > attackRange
	{
		image_xscale = sign(oSkeleton.x - x);
		if image_xscale == 0
		{
			image_xscale = 1;	
		}
		MoveAndCollide(_directionFacing * chaseSpeed, 0);	
	}
	
	if _distanceToPlayer <= backupRange
	{
		if _directionFacing != sign(oSkeleton.x - x)
		{
			image_xscale = sign(oSkeleton.x - x);
			if image_xscale == 0
			{
				image_xscale = 1;	
			}	
		}
		MoveAndCollide(-_directionFacing * chaseSpeed, 0);	
	}

}