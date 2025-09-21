
if keyboard_check(vk_space)
{
	if place_meeting(x, y+1, obj_platform)
	{
		y -= jump_power
	}
	
	if not(place_meeting(x, y + 1, obj_platform)) && can_double_jump
	{
		y -= jump_power
		can_double_jump = false
	}
}