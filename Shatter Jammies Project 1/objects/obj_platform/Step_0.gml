if place_meeting(x, y, obj_platform_bottom)
{
	spd = 0
}
else
{
	spd = 10
}

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
	
	with obj_zombie
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

if instance_place(x, y + 1, obj_player)
{
	dir *= -1
}