
if not instance_exists(oSkeleton) exit;

var _dirr = point_direction(x, y, oSkeleton.x, oSkeleton.y);
var _accel = 0.25;
motion_add(_dirr, _accel);

var _maxSpeed = 6;
if speed > _maxSpeed
{
	speed = _maxSpeed;	
}