if (keyboard_check(vk_left) and !instance_place(x-move_speed, y, obj_solid)) 
{
	x += -move_speed
	image_xscale = -1
}

if (keyboard_check(vk_right)) 
{
	x += move_speed
	image_xscale = 1
}

if (keyboard_check(vk_up))
{
	if (instance_place(x, y+1, obj_solid))
	{
		vspeed = jump_height
	}
}

if (instance_place(x, y+1, obj_solid)) 
{
	sprite_index = spr_player_walk
	image_speed = 1
	gravity = 0
} 
else 
{
	gravity = .5	
}

if vspeed != 0 and !instance_place(x, y+1, obj_solid)
{
	sprite_index = spr_player_jump
	image_speed = 0
	image_index = 0
	if vspeed < -3
	{
		image_index = 1
	}
	else if vspeed > 3
	{
		image_index = 3
	}
	else
	{
		image_index = 2
	}
}

if i_frames > 0
{
	i_frames--
}

if hspeed == 0
{
	sprite_index = spr_player_idle
}
else
{
	sprite_index = spr_player_walk
}

//if health <= 0
//{
//	room_restart()
//}