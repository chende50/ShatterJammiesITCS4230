var results = video_draw()

if(results[0] == 0){
	draw_surface(results[1], 0, 0)
}

if(keyboard_check(vk_space)){
	video_close()
}

if(video_get_status() == video_status_closed){
	room_goto_next()	
}
