if hitpoints <= 0
{
	instance_destroy()
}

if distance_to_object(obj_player) <= range and !on_cooldown
{
	i_frames += 1
	
	hspeed = 0
	sprite_index = spr_zombie_attack
	image_speed = 1
	
	var projectile = instance_create_layer(x + image_xscale, y, "Instances", obj_projectile)
	projectile.image_xscale = image_xscale
	on_cooldown = true
	alarm[0] = attack_cooldown
}

if i_frames > 0 
{
	i_frames--
}

if !instance_place(x, y+1, obj_solid)
{
	gravity = .5
}
else
{
	gravity = 0
	vspeed = 0
}