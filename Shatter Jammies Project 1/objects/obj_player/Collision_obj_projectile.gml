if state = States.attacking
{
	other.hspeed *= -1
	exit
}

if i_frames <=0 
{
	health --
	i_frames = 60
}