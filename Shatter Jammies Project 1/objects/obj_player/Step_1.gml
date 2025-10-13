if i_frames > 0
{
	i_frames--
}

if(hspeed != 0) image_xscale = sign(hspeed)

switch state
{
	case States.attacking:
		sprite_index = spr_player_attack
		image_speed = 1
	break
	
	case States.idle:
		sprite_index = spr_player_idle
	break
	
	case States.jumping:
		sprite_index = spr_player_jump
		image_speed = 0
		if vspeed <= -3
		{
			image_index = 1
		}
		else if vspeed >= 3
		{
			image_index = 3
		}
		else
		{
			image_index = 2
		} 
	break
	
	case States.walking:
		sprite_index = spr_player_walk
		image_speed = 1
	break
}