/*
* player tests
*/
if (player_test_alarm == 0)
{
    player = instance_create(0,0,player_obj);
    it("Confirming the LEFT_DIRECTION constant is the correct value.",0,player.LEFT_DIRECTION);
    it("Confirming the RIGHT_DIRECTION constant is the correct value.",1,player.RIGHT_DIRECTION);
    it("Confirming that the players movement speed starts at 2",2,player.movement_speed);
    it("Confirming that the players image speed starts at 0.1",0.1,player.image_speed,);
}
/*
* player_keyboard_listen tests
*/
switch(player_test_alarm)
{
    case 0:
        keyboard_key_press(ord('A'));
        break;
    case 1:
        with(player)
        {
            event_perform(ev_step, ev_step_normal);
        }
        it("Confirming that pressing the 'A' key causes the player to move left.", -1*player.movement_speed, player.x)
        it("Confirming that the player sprite is facing left", player.LEFT_DIRECTION, player.player_direction);
        keyboard_key_release(ord('A'));
        break;
    case 2:
        keyboard_key_press(ord('D'));
        player.x = player.xstart;
        player.y = player.ystart;
        break;
    case 3:
        with(player)
        {
            event_perform(ev_step, ev_step_normal);
        }
        it("Confirming that pressing the 'D' key causes the player to move right.", player.movement_speed, player.x)
        it("Confirming that the player sprite is facing right", player.RIGHT_DIRECTION, player.player_direction);
        keyboard_key_release(ord('D'));
        break;
    case 4:
        keyboard_key_press(ord('W'));
        player.x = player.xstart;
        player.y = player.ystart;
        break;
    case 5:
        with(player)
        {
            event_perform(ev_step, ev_step_normal);
        }
        it("Confirming that pressing the 'W' key causes the player to move up.", -1*player.movement_speed, player.y);
        keyboard_key_release(ord('W'));
        break;
    case 6:
        keyboard_key_press(ord('S'));
        player.x = player.xstart;
        player.y = player.ystart;
        break;
    case 7:
        with(player)
        {
            event_perform(ev_step, ev_step_normal);
        }   
        it("Confirming that pressing the 'S' key causes the player to move down.", 2, player.y);
        keyboard_key_release(ord('S'));
        break;
    case 8:
        //shop unit tests
        with(player)
        {
            x = 0;
            y = 0;
        }
        sword = instance_create(0,0,buyable_ice_sword_obj);
        previous_currency = player_controller_obj.current_gold;
        player_controller_obj.current_gold += sword.my_cost;
        with(sword)
        {
            event_perform(ev_step,ev_step_normal);
        }
        it("Verifying that touching a shop object will purchase it",1,player_controller_obj.current_gold = previous_currency);
        break;
    case 9:
        day_end = 20;
        day_start = 8;
        if(current_hour < day_end && current_hour > day_start)
        {
            it("Confirming Correct Background is displayed", background_visible[0], true);
            it("Confirming Incorrect Background is not displayed", background_visible[1], false);
        }
        else
        {
            it("Confirming Correct Background is displayed", background_visible[1], true);
            it("Confirming Incorrect Background is not displayed", background_visible[0], false);
        }
        break;
    case 10:
        minigame_npc = instance_create(0,0,minigame_npc_obj);
        it("Confirming mini-game NPC talks about mini-games",(string_pos("mini-games",minigame_npc.dialog[0])!=0)||(string_pos("mini-games",minigame_npc.dialog[1])!=0)||(string_pos("mini-games",minigame_npc.dialog[2])!=0),true);
        with (minigame_npc)
        {
            instance_destroy();
        }
        break;
    case 11:
        minigame_icon = instance_create(0,0,minigame_rock_dodge_icon_obj);
        it("Confirming a mini-game icon exists which allows the player to enter a mini-game",instance_number(minigame_rock_dodge_icon_obj)==1,true);
        with (minigame_icon)
        {
            instance_destroy();
        }
        break;
    case 12:
        simulate_level_one();
        it("Ensures the first level contains a player by simulating it",instance_number(player_obj)!=0, true);
        it("Ensures the first level contains an item by simulating it",instance_number(buyable_health_potion_obj)!=0,true);
        it("Ensures the first level contains an item shop NPC by simulating it",instance_number(shopkeeper_obj)!=0,true);
        it("Ensures the first level contains a mini-game by simulating it",instance_number(minigame_rock_dodge_icon_obj)!=0,true);
        it("Ensures the first level contains a mini-game NPC by simulating it",instance_number(minigame_npc_obj)!=0,true);
        it("Ensures the first level contains an enemy by simulating it",instance_number(test_enemy_obj)!=0,true);
        it("Ensures the first level contains a boss by simulating it",instance_number(dragon_lord_obj)!=0,true);
        cleanup_level_one();
        break;
    default:
        player_complete = true;
        with (player)
        {
            instance_destroy();
        } 
}
player_test_alarm += 1;
return player_complete;
