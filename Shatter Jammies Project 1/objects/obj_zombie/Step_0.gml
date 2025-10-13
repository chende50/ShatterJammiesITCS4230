if hitpoints <= 0
{
	instance_destroy()
}

if distance_to_object(obj_player) <= range and !on_cooldown
{
	i_frames += 1
	
	sprite_index = spr_zombie_attack
	image_speed = 1
	hspeed = 0
	
	var projectile = instance_create_layer(x - 1, y, "Instances", obj_projectile)
	projectile.image_xscale = image_xscale
	on_cooldown = true
	alarm[0] = attack_cooldown
}

if i_frames > 0 
{
	i_frames--
}