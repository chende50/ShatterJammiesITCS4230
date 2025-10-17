if instance_id_get(other) == obj_platform
{
	other.dir *= -1
	exit
}

if other.y < y 
{
	y += 1 
	vspeed = 0
}