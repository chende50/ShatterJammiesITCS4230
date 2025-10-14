video_started = false;
video_played = false;

// Start the video
if (video_open("cutscene.mp4")) {
    video_enable_loop(false);
    video_started = true;
}