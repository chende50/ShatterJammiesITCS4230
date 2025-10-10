if health <= 0
{
	room_restart()
}

if vspeed != 0 and !instance_place(x, y+1, obj_solid)
{
	state = States.jumping
}
else if vspeed == 0 and hspeed == 0 and instance_place(x, y+1, obj_solid)
{
	state = States.idle
}
else if vspeed == 0 and hspeed != 0 and instance_place(x, y+1, obj_solid)
{
	state = States.walking
}

if !instance_place(x, y+1, obj_solid)
{
	gravity = .5
}
else
{
	gravity = 0
}

/*Collision check
y += vspeed
if(vspeed > 0){ //Falling
	while(place_meeting(x, y, obj_solid)){
		y -= 1
		vspeed = 0
	}
} else if (vspeed < 0){ //Jumping
	while(place_meeting(x, y, obj_solid)){
		y += 1
		vspeed = 0
	}
} */

