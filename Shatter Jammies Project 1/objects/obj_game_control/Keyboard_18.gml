if keyboard_check(ord("0"))
{
	room_goto(0)
}
if keyboard_check(ord("1"))
{
	room_goto(rm_levelOne)
}
if keyboard_check(ord("2"))
{
	room_goto(rm_levelTwo)
}
if keyboard_check(ord("3"))
{
	room_goto(rm_levelThree)
}

if keyboard_check(ord("H"))
{
	health += 1
}

if keyboard_check(ord("R"))
{
	health = 3
	room_restart()
}
if keyboard_check(ord("G"))
{
	game_restart()
}
if keyboard_check(ord("L"))
{
	room_goto(rm_loseScreen)	
}
if keyboard_check(ord("M"))
{
	health = 0
}