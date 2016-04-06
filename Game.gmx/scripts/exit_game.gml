/*
* exit_game()
*
* deactivates all instances and activates pause menu
*/

if (room == second_room || room == battle_room || room == testing_room)
    {
    instance_deactivate_all(true);
    
    instance_create(view_xview[0]+240, view_yview[0]+60, paused_title_obj);
    
    instance_create(view_xview[0]+96, view_yview[0]+96, continue_game_obj);
    instance_create(view_xview[0]+192, view_yview[0]+96, options_obj);
    instance_create(view_xview[0]+288, view_yview[0]+96, save_game_btn_obj);
    instance_create(view_xview[0]+384, view_yview[0]+96, exit_obj);
    }
else
    {
    room_change(menu_room);
    }
