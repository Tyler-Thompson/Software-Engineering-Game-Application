/** 
* rock_dodge_keyboard_listen()
*
* Listens to keyboard events for rock_dodge_player_obj
*/

PADDLE_SPEED = 6;
PADDLE_WIDTH = sprite_width;

//check if player is pressing 'left' button
if keyboard_check(player_controller_obj.left_key)
{
    x -= PADDLE_SPEED;
}

//check if player is pressing 'right' button
if keyboard_check(player_controller_obj.right_key)
{
    x += PADDLE_SPEED;
}

//boundary checks to ensure paddle stays on screen
if (x < PADDLE_WIDTH/2)
{
    x = PADDLE_WIDTH/2;
}
else if (x > room_width - PADDLE_WIDTH/2)
{
    x = room_width - PADDLE_WIDTH/2;
}
