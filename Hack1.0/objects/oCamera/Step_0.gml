
x += random_range(-screenshake, screenshake);
y += random_range(-screenshake, screenshake);

if not instance_exists(oSkeleton) exit;

var _targetX = oSkeleton.x;
var _targetY = oSkeleton.y - 48;

x = lerp(x, _targetX, 0.2);
y = lerp(y, _targetY, 0.2);

camera_set_view_pos(view_camera[0], x - viewWidth/2, y - viewHeight/2);