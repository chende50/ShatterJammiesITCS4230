if state == States.attacking and other.i_frames <= 0
{
	other.hitpoints --
	other.i_frames = 120
}
else if i_frames <= 0
{
	health--
	i_frames = 120
}