/*
* change_display_status()
*
* If the display is windowed, this function fullscreens the game; if the display was fullscreen, this function windows the display
*/

if (!window_get_fullscreen())
{
    //display is windowed, fullscreen the display
    window_set_fullscreen(true);
}
else
{
    //display is fullscreen, window the display
    window_set_fullscreen(false);
}
