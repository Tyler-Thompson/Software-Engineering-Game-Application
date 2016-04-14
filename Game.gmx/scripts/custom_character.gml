/*
 * custom_character()
 * sets player sprite to that character's alternate version
 */

paladin = 0;
wizard = 1;
priestess = 2;

if(player_controller_obj.sprite_num == wizard)
{
    change_player_sprite(white_wizard_spr);
}
else if(player_controller_obj.sprite_num == priestess)
{
    change_player_sprite(white_priestess_spr);
}
else if(player_controller_obj.sprite_num == paladin)
{
    change_player_sprite(white_paladin_spr);
}
