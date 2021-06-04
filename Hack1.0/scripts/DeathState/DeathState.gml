

function DeathState(_deathSprite){

	SetStateSprite(_deathSprite, 0.25, 0);
	friction = true;
	
	if image_index >= image_number-1
	{
		image_index = image_number - 1;
		image_speed = 0;
		if image_alpha > 0
		{
			image_alpha -= 0.1;	
		}
		else
		{
			instance_destroy();	
		}
	}
	
	MoveAndCollide(knockbackSpeed, 0);
	var _knockbackFriction = 0.3;
	knockbackSpeed = Approach(knockbackSpeed, 0, _knockbackFriction);

}