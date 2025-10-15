if hitpoints <= 0
{
	instance_destroy()
}

if object_exists(obj_player) and alarm_get(0) <= 0
{
	var val = sign(x - obj_player.x)
	image_xscale = val
	if distance_to_object(obj_player) <= range
	{
		behavior = Behaviors.pursue
	}
	else
	{
		behavior = Behaviors.wait
	}
}
else
{
	behavior = Behaviors.wait
}