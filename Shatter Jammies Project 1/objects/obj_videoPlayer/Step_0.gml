if (video_started && !video_played) {
    var vidData = video_draw();
    var vidStatus = vidData[0];

    if (vidStatus == -2) { // Video has ended
        video_played = true;
        video_close();
		room_goto_next()
	}
}