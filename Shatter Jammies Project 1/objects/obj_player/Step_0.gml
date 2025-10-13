input_axis = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if state != States.attacking
{
	x += input_axis * move_speed
	//image_xscale = input_axis

	if keyboard_check(ord("W"))
	{
		y -= jump_height
	}
}

if !place_meeting(x, y+1, obj_solid)
{
	y += grav
}

/*if state != States.attacking
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

if instance_place(x + hspeed, y, obj_solid)
{
	hspeed = 0
}

vspeed = min(vspeed, 12)*/
//move_and_collide(hspeed, vspeed, obj_solid)