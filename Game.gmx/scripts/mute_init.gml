/*
* mute_init()
* Sets up the initial constants and variables for the mute_obj
*/

MASTER_LISTENER_INDEX = 0;
var is_muted = audio_get_master_gain(MASTER_LISTENER_INDEX);
if (is_muted > 0)
{
    button_init("Mute Volume");
}
else
{
    button_init("Unmute Volume");
}
