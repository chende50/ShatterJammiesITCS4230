if hitpoints <= 0
{
	instance_destroy()
}

if distance_to_object(obj_player) <= attack_range and !on_cooldown
{
	if hspeed > 0
	{
		instance_create_layer(x + 1, y, "Instances", obj_projectile)
	}
	else if hspeed < 0
	{
		instance_create_layer(x - 1, y, "Instances", obj_projectile)
	}
	on_cooldown = true
	alarm[0] = attack_cooldown
}

if i_frames > 0 
{
	i_frames--
}