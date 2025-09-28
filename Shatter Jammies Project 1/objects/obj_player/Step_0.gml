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
	show_debug_message("jumping...")
	if (instance_place(x, y+1, obj_solid))
	{
		show_debug_message("jumping...")
		vspeed = jump_height
	}
}

if (instance_place(x, y+1, obj_solid)) 
{
	show_debug_message("object_found")
	gravity = 0
} 
else 
{
	gravity = .5	
}

if i_frames > 0
{
	i_frames--
}

//if health <= 0
//{
//	room_restart()
//}