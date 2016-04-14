/*
* exit_game()
*
* deactivates all instances and activates pause menu
*/

VIEW_WIDTH = view_wview[0];
VIEW_HEIGHT = view_hview[0];

if (room == second_room || room == battle_room || room == testing_room)
{
    instance_deactivate_all(true);
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);
    
    instance_create(view_xview[0]+VIEW_WIDTH/2, view_yview[0]+VIEW_HEIGHT/4, paused_title_obj);
    instance_create(view_xview[0]+VIEW_WIDTH/5, view_yview[0]+VIEW_HEIGHT/2.5, continue_game_obj);
    instance_create(view_xview[0]+VIEW_WIDTH/2.5, view_yview[0]+VIEW_HEIGHT/2.5, options_obj);
    instance_create(view_xview[0]+VIEW_WIDTH/1.667, view_yview[0]+VIEW_HEIGHT/2.5, save_game_btn_obj);
    instance_create(view_xview[0]+VIEW_WIDTH/1.25, view_yview[0]+VIEW_HEIGHT/2.5, exit_obj);
}
else
{
    room_change(menu_room);
}
