var input_axis = keyboard_check(ord("D")) - keyboard_check(ord("A"))
hspeed = input_axis * move_speed

if keyboard_check(ord("W")) and (state == States.idle or state == States.walking)
{
	vspeed = jump_height
}