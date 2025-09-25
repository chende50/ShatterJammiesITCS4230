//Movement logic
vspeed += 1.5
if hspeed > 15 hspeed = 15;
if hspeed < -15 hspeed = -15;

friction = .8

hspeed = 0
if keyboard_check(ord("A"))
{
	hspeed -= 7
}
if keyboard_check(ord("D"))
{
	hspeed += 7	
}

hspeed *= friction

if place_meeting(x, y+1, obj_solid)
{
	vspeed = 0
	if keyboard_check(vk_space)
	{
		vspeed -= 30
	}
}

move_and_collide(.1, .1, obj_solid)