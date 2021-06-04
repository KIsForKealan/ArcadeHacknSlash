/// @description Happens every frame

switch (state) 
{
	case "move": 
		#region Move State
		if input.right
		{	
			MoveAndCollide(runSpeed,0);
			image_xscale = 1;
			sprite_index = sSkeletonRun;
			image_speed = 0.6;
		}

		if input.left
		{	
			MoveAndCollide(-runSpeed,0);
			image_xscale = -1;
			sprite_index = sSkeletonRun;
			image_speed = 0.6;
		}

		if not input.right and not input.left
		{
			sprite_index = sSkeletonIdle;	
			image_speed = 0.4;
		}
		else
		{
			if AnimationHitFrame(2) or AnimationHitFrame(5)
			{
				audio_play_sound(aFootstep, 2, false);	
			}
		}
	
		if input.roll
		{
			state = "roll";
		}
		
		if input.attack
		{
			state = "attack one";
		}
		
		#endregion
		break;
		
	case "roll": 
		#region Roll State
		SetStateSprite(sSkeletonRoll,0.7,0);
	
		if image_xscale == 1
		{
			MoveAndCollide(rollSpeed,0);
		}
	
		if image_xscale == -1 
		{
			MoveAndCollide(-rollSpeed,0);
		}
		
		if AnimationEnd()
		{
			state = "move";	
		}
		
		#endregion
		break;
		
	case "attack one":
		#region Attack One State
		SetStateSprite(sSkeletonAttackOne,0.7,0);
		
		if AnimationHitFrame(0)
		{
			audio_play_sound(aSwipe, 3, false);
			CreateHitbox(x, y, self, sSkeletonAttackOneDamage, 3, 4, 3, image_xscale);	
		}
		
		if input.attack and AnimationHitFrameRange(2,4)
		{
			
			state = "attack two";
		}
		
		if AnimationEnd()
		{
			state = "move";
		}
		#endregion
		break;
		
	case "attack two":
		#region Attack Two State
		SetStateSprite(sSkeletonAttackTwo,0.7,0);
		
		if AnimationHitFrame(1)
		{
			audio_play_sound(aSwipe, 3, false);
			CreateHitbox(x, y, self, sSkeletonAttackTwoDamage, 3, 4, 3, image_xscale);	
		}
		
		if input.attack and AnimationHitFrameRange(2,4)
		{
			
			state = "attack three";
		}
		
		if AnimationEnd()
		{
			state = "move";	
		}
		#endregion
		break;
		
	case "attack three":
		#region Attack Three State
		SetStateSprite(sSkeletonAttackThree,0.7,0);
		
		if AnimationHitFrame(2)
		{
			audio_play_sound(aSwipe, 3, false);
			CreateHitbox(x, y, self, sSkeletonAttackThreeDamage, 4, 4, 5, image_xscale);	
		}
		
		if AnimationEnd()
		{
			state = "move";	
		}
		#endregion
		break;
		
	case "knockback":
		#region Knockback State
		
		KnockbackState(sSkeletonHitstun, "move");
		
		#endregion
		break;
		
	default: 
		show_debug_message("State " + state + " does not exist");
		state = "move";
		break;
}
