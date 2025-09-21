//Movement logic
if speed > 15 speed = 15;
if speed < -15 speed = -15;

friction = .8
gravity = .9

if keyboard_check(ord("A"))
{
	motion_add(1, -2)	
}
if keyboard_check(ord("D"))
{
	motion_add(1, 2)	
}