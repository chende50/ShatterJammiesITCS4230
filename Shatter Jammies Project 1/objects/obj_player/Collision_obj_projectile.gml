if state = States.attacking and !other.deflected
{
	other.image_xscale *= -1
	other.deflected = true
	audio_play_sound(snd_attack, 1, false)
}
else if i_frames <= 0 and !other.deflected
{
	health --
	i_frames = 60
	audio_play_sound(snd_damage, 1, false)
}