/*
* menu tests
*/
if(menu_counter == 0)
{
    //audio tests
    MASTER_LISTENER_INDEX = 0;
    audio_set_master_gain(MASTER_LISTENER_INDEX,1);
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
}

//Character selection tests
switch(menu_counter)
{
    case 0:
        sprite_increment_button = instance_create(0, 0, wizard_btn_obj);
        mplayer = instance_create(0,0,player_obj);
        with (sprite_increment_button)
        {
            event_perform(ev_mouse, ev_left_press);
            event_perform(ev_step, ev_step_normal);
        }
        break;
    case 1:
        it("Checking that the sprite has changed to the wizard", wizard_spr,mplayer.sprite_index);
        with(sprite_increment_button)
        {
            instance_destroy();
        }
        sprite_increment_button = instance_create(0,0, paladin_btn_obj);
        with(sprite_increment_button)
        {
            event_perform(ev_mouse, ev_left_press);
            event_perform(ev_step, ev_step_normal);
        }
        break;
    case 2:
        it("Checking that the sprite has changed to the paladin", paladin_spr, mplayer.sprite_index);
        with(sprite_increment_button)
        {
            instance_destroy();
        }
        sprite_increment_button = instance_create(0,0, priestess_btn_obj);
        with(sprite_increment_button)
        {
            event_perform(ev_mouse, ev_left_press);
            event_perform(ev_step, ev_step_normal);
        }
        break;
    case 3:
        it("Checking that the sprite has changed to the priestess", priestess_spr, mplayer.sprite_index);
        with(sprite_increment_button)
        {
            instance_destroy();
        }
        with(mplayer)
        {
            instance_destroy();
        }
        break;
    case 4:
        //Pause menu tests
        exit_game();
        it("ensures pause title exists after the game is paused",1,instance_number(paused_title_obj)==1);
        it("ensures continue menu button exists after the game is paused",1,instance_number(continue_game_obj)==1);
        it("ensures options menu button exists after the game is paused",1,instance_number(options_obj)==1);
        it("ensures save game menu button exists after the game is paused",1,instance_number(save_game_btn_obj)==1);
        it("ensures exit game menu button exists after the game is paused",1,instance_number(exit_obj)==1);
        resume();
        break;
    case 5:
        //Rebind keys tests
        
        //left key rebinding
        instance_create(0,0,rebind_left_obj);
        with (rebind_left_obj)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('J');
            event_perform(ev_step, ev_step_normal);
        }
        with (rebind_left_obj)
        {
            instance_destroy();
        }
        break;
    case 6:
        instance_create(0,0,player_obj);
        keyboard_key_press(ord('J'));
        with (player_obj)
        {
            event_perform(ev_step, ev_step_normal);
        }
        break;
    case 7:
        keyboard_key_release(ord('J'));
        break;
    case 8:
        it("ensures key rebinding works for LEFT key",1,player_obj.x < 0);
        with (player_obj)
        {
            instance_destroy();
        }
        break;
    case 9:
        //Rebind keys tests
        
        //right key rebinding
        instance_create(0,0,rebind_right_obj);
        with (rebind_right_obj)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('L');
            event_perform(ev_step, ev_step_normal);
        }
        with (rebind_right_obj)
        {
            instance_destroy();
        }
        break;
    case 10:
        instance_create(0,0,player_obj);
        keyboard_key_press(ord('L'));
        with (player_obj)
        {
            event_perform(ev_step, ev_step_normal);
        }
        break;
    case 11:
        keyboard_key_release(ord('L'));
        break;
    case 12:
        it("ensures key rebinding works for RIGHT key",1,player_obj.x > 0);
        with (player_obj)
        {
            instance_destroy();
        }
        break;
    case 13:
        //Rebind keys tests
        
        //up key rebinding
        instance_create(0,0,rebind_up_obj);
        with (rebind_up_obj)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('I');
            event_perform(ev_step, ev_step_normal);
        }
        with (rebind_up_obj)
        {
            instance_destroy();
        }
        break;
    case 14:
        instance_create(0,0,player_obj);
        keyboard_key_press(ord('I'));
        with (player_obj)
        {
            event_perform(ev_step, ev_step_normal);
        }
        break;
    case 15:
        keyboard_key_release(ord('I'));
        break;
    case 16:
        it("ensures key rebinding works for UP key",1,player_obj.y < 0);
        with (player_obj)
        {
            instance_destroy();
        }
        break;
    case 17:
        //Rebind keys tests
        
        //Down key rebinding
        instance_create(0,0,rebind_down_key);
        with (rebind_down_key)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('K');
            event_perform(ev_step, ev_step_normal);
        }
        with (rebind_down_key)
        {
            instance_destroy();
        }
        break;
    case 18:
        instance_create(0,0,player_obj);
        keyboard_key_press(ord('K'));
        with (player_obj)
        {
            event_perform(ev_step, ev_step_normal);
        }
        break;
    case 19:
        keyboard_key_release(ord('K'));
        break;
    case 20:
        it("ensures key rebinding works for DOWN key",1,player_obj.y > 0);
        with (player_obj)
        {
            instance_destroy();
        }
        break;
    case 21:
        //key binding resets to default
        //Down key rebinding
        instance_create(0,0,rebind_down_key);
        with (rebind_down_key)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('S');
            event_perform(ev_step, ev_step_normal);
            instance_destroy();
        }
        //Up key rebinding
        instance_create(0,0,rebind_up_obj);
        with (rebind_up_obj)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('W');
            event_perform(ev_step, ev_step_normal);
            instance_destroy();
        }
        //Left key rebinding
        instance_create(0,0,rebind_left_obj);
        with (rebind_left_obj)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('A');
            event_perform(ev_step, ev_step_normal);
            instance_destroy();
        }
        //Right key rebinding
        instance_create(0,0,rebind_right_obj);
        with (rebind_right_obj)
        {
            event_perform(ev_mouse, ev_left_press);
            keyboard_lastkey = ord('D');
            event_perform(ev_step, ev_step_normal);
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
