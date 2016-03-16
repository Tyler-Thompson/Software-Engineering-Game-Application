/*
* exit_game()
*
* deactivates all instances and activates pause menu
*/

if (room == second_room || room == battle_room)
    {
    instance_deactivate_all(true);
    
    instance_create(240, 60, paused_title_obj);
    
    instance_create(96, 96, continue_game_obj);
    instance_create(192, 96, options_obj);
    instance_create(288, 96, save_game_btn_obj);
    instance_create(384, 96, exit_obj);
    }
else
    {
    room_change(menu_room);
    }
