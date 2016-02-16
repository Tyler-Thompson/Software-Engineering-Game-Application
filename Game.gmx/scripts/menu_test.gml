/*
* menu tests
*/
MASTER_LISTENER_INDEX = 0;
it("ensures volume is on", 1, audio_get_master_gain(MASTER_LISTENER_INDEX));
change_mute_status();
it("ensures the mute button works", 0, audio_get_master_gain(MASTER_LISTENER_INDEX));

return true;
