if sprite_index == spr_zombie_attack
{
	sprite_index = spr_zombie_walk
	if movable 
	{
		hspeed = move_speed
		image_speed = 1
	}
}