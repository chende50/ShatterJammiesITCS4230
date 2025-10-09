if health <= 0
{
	room_restart()
}

if vspeed == 0 and hspeed == 0 and instance_place(x, y+1, obj_solid)
{
	state = States.idle
}
else if vspeed != 0 and !instance_place(x, y+1, obj_solid)
{
	state = States.jumping
}
else if vspeed == 0 and hspeed != 0 and instance_place(x, y+1, obj_solid)
{
	state = States.walking
}

if !instance_place(x, y+1, obj_solid)
{
	gravity = .5
}
else
{
	gravity = 0
}