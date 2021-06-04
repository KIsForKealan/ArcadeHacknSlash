// Script returns true/false if inside of specific range of frames in animation
// 

function AnimationHitFrameRange(_hitFrameStart, _hitFrameEnd){
	return image_index >= _hitFrameStart and image_index <= _hitFrameEnd;
}