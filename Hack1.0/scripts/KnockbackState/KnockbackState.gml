/// KnockbackState (knockbackSprite, nextState)


function KnockbackState(_knockbackSprite, _nextState){
	
	SetStateSprite(_knockbackSprite, 0, 0);
	image_xscale = -sign(knockbackSpeed);
	MoveAndCollide(knockbackSpeed, 0);
	var _knockbackFriction = 0.3;
	knockbackSpeed = Approach(knockbackSpeed, 0, _knockbackFriction);
	if knockbackSpeed == 0
	{
		state = _nextState;
	}

}