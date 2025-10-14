
input_axis = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if !instance_place(x, y+1, obj_solid)
{
	gravity = .5
}
else
{
	gravity = 0
	vspeed = 0
}

if state != States.attacking
{
	hspeed = input_axis * move_speed
	if keyboard_check(ord("W")) and (state == States.idle or state == States.walking)
	{
		vspeed = jump_height
	}
}

if place_meeting(x + hspeed, y - 10, obj_solid)
{
	x -= hspeed
}

vspeed = min(vspeed, 12)