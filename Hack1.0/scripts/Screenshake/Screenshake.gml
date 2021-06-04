// Intensity, duration


function Screenshake(_intensity, _duration){

	if not instance_exists(oCamera) exit;
	
	with (oCamera)
	{
		screenshake = _intensity;
		alarm[0] = _duration;
	}

}