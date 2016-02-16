/*
* menu_init()
* initializes the constants and variables needed for the menu room
*/

draw_set_font(menu_font);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

//creates menu buttons

NUMBER_OF_MENU_BUTTONS = 5;
BUTTON_PADDING = 24;
BUTTONS[0] = start_obj;
BUTTONS[1] = load_game_obj;
BUTTONS[2] = options_obj;
BUTTONS[3] = cheat_codes_obj;
BUTTONS[4] = exit_obj;

for (var i = 0; i < NUMBER_OF_MENU_BUTTONS; i++)
{
    instance_create(room_width/2,(room_height/5)*i+BUTTON_PADDING,BUTTONS[i]);
}
