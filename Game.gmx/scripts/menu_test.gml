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
//post-test instance clean-up
with (menu_obj) 
{
    instance_destroy(); 
}
set_test_draw();

return true;
