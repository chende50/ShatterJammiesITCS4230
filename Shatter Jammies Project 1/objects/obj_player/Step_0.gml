
input_axis = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if !instance_place(x, y+1, obj_solid)
{
	gravity = .7
}
else
{
	gravity = 0
	vspeed = 0
	dbl_jump = true
}

if state != States.attacking
{
	hspeed = input_axis * move_speed
	if keyboard_check_pressed(ord("W")) and (state == States.idle or state == States.walking)
	{
		vspeed = jump_height
	}
	else if keyboard_check_pressed(ord("W")) and dbl_jump and state == States.jumping
	{
		dbl_jump = false
		vspeed = jump_height
	}
}

if place_meeting(x + hspeed, y - 10, obj_solid)
{
	x -= hspeed
}

vspeed = min(vspeed, 12)