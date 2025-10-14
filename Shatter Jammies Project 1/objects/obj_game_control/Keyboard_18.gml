if keyboard_check(ord("0"))
{
	room_goto(0)
}
if keyboard_check(ord("1"))
{
	room_goto(1)
}
if keyboard_check(ord("2"))
{
	room_goto(2)
}

if keyboard_check(ord("3"))
{
	room_goto(3)
}

if keyboard_check(ord("H"))
{
	health += 1
}

if keyboard_check(ord("R"))
{
	room_restart()
}
if keyboard_check(ord("G"))
{
	game_restart()
}
if keyboard_check(ord("L")){
	room_goto(rm_loseScreen)	
}