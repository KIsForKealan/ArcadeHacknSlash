
function BossKnockback(){

	MoveAndCollide(knockbackSpeed, 0);
	var _knockbackFriction = 0.3;
	knockbackSpeed = Approach(knockbackSpeed, 0, _knockbackFriction);

}