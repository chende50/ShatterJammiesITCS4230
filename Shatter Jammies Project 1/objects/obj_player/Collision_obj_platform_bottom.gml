if state == States.attacking and other.i_frames <= 0
{
	audio_play_sound(snd_attack, 1, false)
}