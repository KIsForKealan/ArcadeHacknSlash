
if not instance_exists(other) exit;

var _dirr = point_direction(other.x, other.y, x, y);
var _accel = 0.5;
motion_add(_dirr, _accel);