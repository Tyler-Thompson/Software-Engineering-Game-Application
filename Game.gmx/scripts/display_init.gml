/*
* display_init()
* Sets up the initial constants and variables for the mute_obj
*/

if (!window_get_fullscreen())
{
    button_init("Go Fullscreen");
}
else
{
    button_init("Go Windowed");
}
