draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_font(f_larger)
draw_set_color(c_black)

switch room {
	case rm_levelOne:
		draw_text(x, y, "Level One\n" + "Find the crystal shard to continue")
	break
	
	case rm_levelTwo:
		draw_text(x, y, "Level Two\n" + "Find the crystal shard to continue")
	break
	
	case rm_levelThree:
		draw_text(x, y, "Level Three\n" + "Find the crystal shard to continue\n" + "You now have to power to double jump!\n" + "Break crystal towers with your hammer")
	break
}