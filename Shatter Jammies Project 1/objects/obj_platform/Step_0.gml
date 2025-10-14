var move = spd * dir

if moving
{
	if horizontal
	{		
		x += move
	}
	else
	{
		y += move
	}
	
	with obj_player
	{
		if place_meeting(x, y + 1, other)
		{
			if other.horizontal
			{
				x += move
			}
			else
			{
				y += move
			}
		}
	}
}	