if creator == noone or creator == other or ds_list_find_index(hitObjects, other) != -1
{
	exit;	
}

other.hp -= damage;
audio_play_sound(aMediumHit, 4, false);
repeat (10)
{
	instance_create_layer(other.x, other.y - 12, "Effects", oHitEffect);	
}

if instance_exists(oSkeleton) 
{
	if creator.object_index == oSkeleton and other.hp <= 0 and other.state != "death"
	{
		oSkeleton.kills += 1;	
	}
	
	if other.object_index == oSkeleton
	{
		// We hit the player
		Screenshake(4, 8);
		
		if other.hp <= 0 
		{
			var _number = sprite_get_number(sSkeletonBones);
			for (var i = 0; i < _number; i++)
			{
				var _bx = other.x + random_range(-8, 8);
				var _by = other.y + random_range(-24, 8);
				var _bone = instance_create_layer(_bx, _by, "Instances", oSkeletonBones);
				_bone.direction = 90 - (image_xscale * random_range(30, 60));
				_bone.speed = random_range(3, 10);
				_bone.image_index = i;
				if i == 5 _bone.image_angle = 130;
			}
			ini_open("save.ini");
			ini_write_real("Scores", "Kills", other.kills);
			var _highScore = ini_read_real("Scores", "Highscore", 0);
			if other.kills > _highScore 
			{
				ini_write_real("Scores", "Highscore", other.kills);	
			}
			ini_close();
		}
	}
	else
	{	
		// We hit an enemy
		other.alarm[0] = 120;
		Screenshake(2, 5);
	}
}

ds_list_add(hitObjects, other);
if other.state != "death" and other.object_index != oBoss
{
	other.state = "knockback";
}
other.knockbackSpeed = knockback * image_xscale;

