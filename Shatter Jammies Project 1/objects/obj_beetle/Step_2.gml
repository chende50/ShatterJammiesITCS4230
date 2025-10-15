switch behavior
{
	case Behaviors.pursue:
		if object_exists(obj_player)
		{
			move_towards_point(obj_player.x, obj_player.y, 5)
		}
	break
	
	case Behaviors.retreat:
		move_towards_point(initial_x, initial_y, 5)
	break
	
	case Behaviors.wait:
	break
}