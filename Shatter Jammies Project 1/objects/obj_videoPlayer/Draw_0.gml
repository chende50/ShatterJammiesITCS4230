if (video_started && !video_played) {
    var vidData = video_draw();
    var vidStatus = vidData[0];

    if (vidStatus == 0) {
        var surface = vidData[1];
        if (surface != -1) {
            draw_surface_stretched(surface, 0, 0, display_get_width(), display_get_height());
        }
    }
}