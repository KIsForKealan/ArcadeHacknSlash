
switch (state)
{
	case "chase":
		SetStateSprite(sBossWalk, 0.3, 0);
		BossChaseState();
		BossKnockback();
		break;
		
	case "stall":
	SetStateSprite(sBossIdle, 0.3, 0);
		if alarm[1] <= 0
		{
			state = "chase";	
		}
		BossKnockback();
		break;
		
	case "attack":
		SetStateSprite(sBossAttack, 0.5, 0);
		if AnimationHitFrame(7)
		{
			audio_play_sound(aBigHit, 5, false);
			audio_play_sound(aMediumHit, 2, false);
			CreateHitbox(x, y, self, sBossAttackDamage, 10, 3, 12, image_xscale);	
			Screenshake(10, 16);
		}
		
		if AnimationEnd()
		{
			state = "stall";
			alarm[1] = 30;
		}
		BossKnockback();
		break;
	/*	
	case "knockback":
		KnockbackState(sBossIdle, "chase");
		break;
	*/	
	case "death":
		DeathState(sBossDie);
		break;
}