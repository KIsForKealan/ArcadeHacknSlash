/// AnimationHitFrame (_frame)
/// Returns true if image index is equal to _frame argument

function AnimationHitFrame(_frame){
	var _frameRange = image_speed * sprite_get_speed(sprite_index) / game_get_speed(gamespeed_fps);
	return image_index >= _frame and image_index < _frame+_frameRange;
}