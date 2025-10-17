if state == States.attacking
{
	other.hitpoints --
	audio_play_sound(snd_attack, 1, false)
}
else if i_frames <= 0
{
	health--
	i_frames = 120
	audio_play_sound(snd_damage, 1, false)
}