if state != States.attacking
{
	if keyboard_check(vk_left) 
	{
		state = States.walking
		hspeed = -move_speed
	}

	if keyboard_check(vk_right)
	{
		state = States.walking
		hspeed = move_speed
	}

	if keyboard_check(vk_up) and instance_place(x, y+1, obj_solid)
	{
		vspeed = jump_height
	}
}

if (instance_place(x, y+1, obj_solid)) 
{
	gravity = 0
} 
else 
{
	gravity = .5	
}

if vspeed != 0
{
	state = States.jumping
}
