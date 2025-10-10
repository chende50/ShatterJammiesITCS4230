
var input_axis = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if state != States.attacking
{
	hspeed = input_axis * move_speed
	if keyboard_check(ord("W")) and (state == States.idle or state == States.walking)
	{
		vspeed = jump_height
	}
}

if !instance_place(x, y+1, obj_solid)
{
	gravity = .5
}
else
{
	gravity = 0
}

vspeed = min(vspeed, 12)