/*
* draw_cheatbox()
* Draws the cheatbox's text.
*/

draw_sprite(sprite_index,-1,x,y);
draw_text(x,y,my_text+"##"+keyboard_string);

MAX_CHEAT_LENGTH = 20;

//bounds the keylength to the max allowed length for a cheat
if (string_length(keyboard_string) > MAX_CHEAT_LENGTH)
{
    keyboard_string = string_copy(keyboard_string,string_length(keyboard_string)-MAX_CHEAT_LENGTH,string_length(keyboard_string));
}
