/*
* menu tests
*/

//audio tests
MASTER_LISTENER_INDEX = 0;
it("ensures volume is on", 1, audio_get_master_gain(MASTER_LISTENER_INDEX));
change_mute_status();
it("ensures the mute button works", 0, audio_get_master_gain(MASTER_LISTENER_INDEX));

//fullscreen tests
window_set_fullscreen(false);
change_display_status();
it("ensures the fullscreen button works", 1, window_get_fullscreen());
change_display_status();
it("ensures the fullscreen button changes back to windowed", 0, window_get_fullscreen());

//menu tests
menu_init();
it("ensures start menu button exists after menu is initialized",1,instance_number(start_obj)==1);
it("ensures load menu button exists after menu is initialized",1,instance_number(load_game_obj)==1);
it("ensures options menu button exists after menu is initialized",1,instance_number(options_obj)==1);
it("ensures cheat codes menu button exists after menu is initialized",1,instance_number(cheat_codes_obj)==1);
it("ensures exit menu button exists after menu is initialized",1,instance_number(exit_obj)==1);

//Character selection tests
switch(menu_counter)
{
    case 0:
        sprite_increment_button = instance_create(0, 0, character_choice_obj);
        player = instance_create(0,0,player_obj);
        sprite_num = player_controller_obj.sprite_num;
        with (sprite_increment_button)
        {
            event_perform(ev_mouse, ev_left_press);
            event_perform(ev_step, ev_step_normal);
        }
    case 1:
        
        sprite_num = (sprite_num + 1)%(array_length_1d(player_controller_obj.spr_name))
        it("Checking that the sprite number has incremented correctly", sprite_num, player_controller_obj.sprite_num);
        it("Checking that the sprite has changed to the new one", player_controller_obj.spr_name[sprite_num],player.sprite_index);
        with(player)
        {
            instance_destroy();
        }
        with(sprite_increment_button)
        {
            instance_destroy();
        }
        menu_complete = true;
        break;
}
//post-test instance clean-up
with (menu_obj) 
{
    instance_destroy(); 
}
set_test_draw();

menu_counter += 1;
return menu_complete;
