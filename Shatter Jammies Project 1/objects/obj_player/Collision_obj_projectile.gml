if state = States.attacking and !other.deflected
{
	other.image_xscale *= -1
	other.deflected = true
}
else if i_frames <= 0 and !other.deflected
{
	health --
	i_frames = 60
}