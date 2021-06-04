
var _enemyCount = instance_number(oEnemyParent);

if instance_exists(oSkeleton) and _enemyCount < oSkeleton.kills/4
{
	if _enemyCount > 5
	{
		exit;	
	}
	
	var _enemy = choose(oKnight, oCrow, oCrow);
	if oSkeleton.kills > 20 and not instance_exists(oBoss)
	{
		_enemy = choose(oCrow, oCrow, oKnight, oKnight, oBoss);	
	}
	
	var _newX = random_range(220, room_width-220);
	while point_distance(_newX, 0, oSkeleton.x, 0) < 200
	{
		var _newX = random_range(220, room_width-220);
	}
	
	instance_create_layer(_newX, oSkeleton.y, "Instances", _enemy);
}
