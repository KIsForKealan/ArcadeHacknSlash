
if not instance_exists(other) exit;

audio_play_sound(aExpr, 1, false);
with (other)
{
	EXP += 1;
	if EXP >= EXPMax
	{
		level += 1;
		EXP = EXP - EXPMax;
		EXPMax += EXPMax;
		hpMax += 5;
		hp = hpMax;
		strength += 5;
	}
}

instance_destroy();