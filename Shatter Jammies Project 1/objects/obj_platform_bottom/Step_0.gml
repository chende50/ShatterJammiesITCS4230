switch hp {
	case 3:
		sprite_index = spr_platform_bottom
		image_index = 0
		image_speed = 0
	break
	
	case 2:
		sprite_index = spr_platform_bottom_break
		image_index = 0
		image_speed = 0
	break
	
	case 1:
		image_index = 1
	break
	
	case 0:
		image_index = 2
		image_speed = 1
		hp--
	break
}

i_frames -- 