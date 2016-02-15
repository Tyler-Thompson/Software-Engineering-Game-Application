
player = instance_create(0,0,player_obj);

/*
* player_init tests
*/
it("Confirming the LEFT_DIRECTION constant is the correct value.",0,player.LEFT_DIRECTION);
it("Confirming the RIGHT_DIRECTION constant is the correct value.",1,player.RIGHT_DIRECTION);
it("Confirming that the players movement speed starts at 2",2,player.movement_speed);
it("Confirming that the players image speed starts at 1",player.image_speed,1);

/*
* player_keyboard_listen tests
*/
if(player_test_alarm == 0)
{
    keyboard_key_press(ord('A'));
}
else if(player_test_alarm == 1)
{
    it("Confirming that pressing the 'A' key causes the player to move left.", -1*player.movement_speed, player.x)
    keyboard_key_release(ord('A'));
}

keyboard_key_press(ord('D'));
it("Confirming that pressing the 'D' key causes the player to move right.", 0, player.x)
keyboard_key_press(ord('W'));
it("Confirming that pressing the 'W' key causes the player to move up.", 2, player.y)
keyboard_key_press(ord('S'));
it("Confirming that pressing the 'S' key causes the player to move up.", 0, player.y)
it("Confirming that player has returned to its original position",true, player.x == 0 and player.y == 0)

++player_test_alarm;
return complete;
