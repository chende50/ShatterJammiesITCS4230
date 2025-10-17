enum States {
	idle,
	walking,
	jumping,
	attacking
}

state = States.idle
input_axis = 0

if room == rm_levelThree
{
	dbl_jump = true
}
else
{
	dbl_jump = false
}

audio_play_sound(snd_next_room, 1, false)