///  
// lifespan - number of frames

function CreateHitbox(_x, _y, _creator, _sprite, _knockback, _lifespan, _damage, _Xscale){
	var _hitbox = instance_create_layer(_x, _y, "Instances", oHitbox);
	
	_hitbox.sprite_index = _sprite;
	_hitbox.creator = _creator;
	_hitbox.knockback = _knockback;
	_hitbox.alarm[0] = _lifespan;
	_hitbox.damage = _damage;
	_hitbox.image_xscale = _Xscale;
}