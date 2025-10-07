image_xscale = sign(hspeed)

if state = States.walking
{
	sprite_index = spr_player_walk
	image_speed = 1
}

if state = States.jumping
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

if state = States.walking
{
	sprite_index = spr_player_idle
}

//if health <= 0
//{
//	room_restart()
//}