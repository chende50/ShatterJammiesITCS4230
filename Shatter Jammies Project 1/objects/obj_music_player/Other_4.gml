if room == rm_cutscene
{
	audio_pause_sound(snd_music)
}
else if audio_is_paused(snd_music)
{
	audio_resume_sound(snd_music)
}