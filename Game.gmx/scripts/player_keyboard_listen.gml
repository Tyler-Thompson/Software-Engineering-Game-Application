/** 
* player_keyboard_listen()
*
* Listens to keyboard events for player_obj
*/

//check if player is pressing 'left' button
if keyboard_check(ord('A'))
{
    player_move(-1*movement_speed,0);
    player_change_direction(LEFT_DIRECTION);
}

//check if player is pressing 'right' button
if keyboard_check(ord('D'))
{
    player_move(movement_speed,0);
    player_change_direction(RIGHT_DIRECTION);
}

//check if player is pressing 'up' button
if keyboard_check(ord('W'))
{
    player_move(0,-1*movement_speed);
}

//check if player is pressing 'down' button
if keyboard_check(ord('S'))
{
    player_move(0,movement_speed);
}
