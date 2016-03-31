/** 
* player_keyboard_listen()
*
* Listens to keyboard events for player_obj
*/

//check if player is pressing 'left' button
if keyboard_check(player_controller_obj.left_key)
{
    player_move(-1*movement_speed,0);
    player_change_direction(LEFT_DIRECTION);
}

//check if player is pressing 'right' button
if keyboard_check(player_controller_obj.right_key)
{
    player_move(movement_speed,0);
    player_change_direction(RIGHT_DIRECTION);
}

//check if player is pressing 'up' button
if keyboard_check(player_controller_obj.up_key)
{
    player_move(0,-1*movement_speed);
}

//check if player is pressing 'down' button
if keyboard_check(player_controller_obj.down_key)
{
    player_move(0,movement_speed);
}

//checks if the player has pressed a number on the keyboard, which 
//corresponds to an item in the inventory
for(keyboard_listen_i = 1; keyboard_listen_i <= 8; ++keyboard_listen_i)
{
  if(keyboard_check(ord(string(keyboard_listen_i))))
  {
    use_item(player_controller_obj.player_inventory[(keyboard_listen_i-1) % 10],(keyboard_listen_i-1)%10);
  }
}
for(keyboard_listen_i = 9; keyboard_listen_i <= 10; ++keyboard_listen_i)
{
  if(keyboard_check(ord(string(keyboard_listen_i%10))))
  {
    //the equip array is an array with 2 slots,
    //the easiest way to access the correct spot is to 
    //increment the keyboard listener and take it modulus 2
    unequip(player_controller_obj.equip[(keyboard_listen_i+1) % 2]);
  }
}
