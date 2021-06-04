
switch (state)
{
	case "chase":
		#region Chase State
		SetStateSprite(sKnightWalk, 0.4, 0);
		ChaseState();
		
		#endregion
		break;
		
	case "attack":
		#region Attack State
		SetStateSprite(sKnightAttack,0.6,0);
		
		if AnimationHitFrame(4)
		{
			audio_play_sound(aSwipe, 3, false);
			CreateHitbox(x, y, self, sSkeletonAttackOneDamage, 3, 4, 3, image_xscale);	
		}
		
		if AnimationEnd()
		{
			state = "chase";	
		}
		#endregion
		break;
		
	case "knockback":
		#region Knockback State
		
		KnockbackState(sKnightHitstun, "chase");
		
		#endregion
		break;
		
	case "death":
		#region Death State
		DeathState(sKnightDie);
		#endregion
		break;
		
	default: 
		show_debug_message("State " + state + " does not exist");
		state = "chase";
		break;
}