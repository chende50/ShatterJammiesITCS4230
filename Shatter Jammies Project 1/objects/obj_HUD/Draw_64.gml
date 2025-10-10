for (var i = 0; i < health; i++)
{
	draw_sprite(spr_heart, 0, 32 + (64 * i), 32)
}
draw_text(64, 64, "Score: " + string(score))