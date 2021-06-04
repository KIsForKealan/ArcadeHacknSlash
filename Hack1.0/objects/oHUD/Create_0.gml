
// gui defaults to res of port on screen - view size

var _cameraID = view_camera[0];
var _viewWidth = camera_get_view_width(_cameraID);
var _viewHeight = camera_get_view_height(_cameraID);
display_set_gui_size(_viewWidth, _viewHeight);

if not instance_exists(oSkeleton) exit;
drawHP = oSkeleton.hp;
drawHPMax = oSkeleton.hpMax;

draw_set_font(fOne);

audio_play_sound(aMusic, 4, true);