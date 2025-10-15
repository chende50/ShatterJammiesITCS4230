if state = States.attacking and !other.deflected
{
	other.image_xscale *= -1
	other.deflected = true
	exit
}

if i_frames <=0 
{
	health --
	i_frames = 60
}