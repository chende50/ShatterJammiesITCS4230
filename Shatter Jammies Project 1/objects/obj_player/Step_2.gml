input_axis = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if state != States.attacking
{
	if not place_meeting(x, y+1, obj_solid)
	{
		state = States.jumping
	}
	else if input_axis == 0
	{
		state = States.idle
	}
	else if input_axis != 0
	{
		state = States.walking
	}
}

/*if state != States.attacking
{
	if vspeed != 0 and !instance_place(x, y+1, obj_solid)
	{
		state = States.jumping
	}
	else if vspeed == 0 and hspeed == 0 and instance_place(x, y+1, obj_solid)
	{
		state = States.idle
	}
	else if vspeed == 0 and hspeed != 0 and instance_place(x, y+1, obj_solid)
	{
		state = States.walking
	}
}*/