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
    default:
        player_complete = true;
        with (player)
        {
            instance_destroy();
        } 
}
player_test_alarm += 1;
return player_complete;