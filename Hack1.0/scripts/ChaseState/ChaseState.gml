

function ChaseState(){
	
	if not instance_exists(oSkeleton) exit;
		
	image_xscale = sign(oSkeleton.x - x);
	if image_xscale == 0
	{
		image_xscale = 1;	
	}
		
	var _directionFacing = image_xscale;
	var _distanceToPlayer = point_distance(x, y, oSkeleton.x, oSkeleton.y);
	if _distanceToPlayer <= attackRange
	{
		state = "attack";	
	}
	else
	{
		MoveAndCollide(_directionFacing * chaseSpeed, 0);	
	}

}