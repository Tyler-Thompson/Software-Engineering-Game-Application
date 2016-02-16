/*
* menu tests
*/

//audio tests
MASTER_LISTENER_INDEX = 0;
it("ensures volume is on", 1, audio_get_master_gain(MASTER_LISTENER_INDEX));
change_mute_status();
it("ensures the mute button works", 0, audio_get_master_gain(MASTER_LISTENER_INDEX));

//fullscreen tests
window_set_fullscreen(false);
change_display_status();
it("ensures the fullscreen button works", 1, window_get_fullscreen());
change_display_status();
it("ensures the fullscreen button changes back to windowed", 0, window_get_fullscreen());

return true;
