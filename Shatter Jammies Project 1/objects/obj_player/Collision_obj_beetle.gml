if state == States.attacking
{
	other.hitpoints --
}
else if i_frames <= 0
{
	health--
	i_frames = 120
}