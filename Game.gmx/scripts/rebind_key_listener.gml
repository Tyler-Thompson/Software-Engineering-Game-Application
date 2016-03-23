/*
* rebind_key()
* Starts a listener to rebind a key control
*
* @argument0: the key to rebind
*/

//ensures only 1 button is being listened to
listening = true;

//checks for any key press; rebinds if detected
if (last_key != keyboard_lastkey) 
{
    if (argument0 == LEFT_KEY)
    {
        player_controller_obj.left_key = keyboard_lastkey;
    }
    else if (argument0 == RIGHT_KEY)
    {
        player_controller_obj.right_key = keyboard_lastkey;
    }
    else if (argument0 == UP_KEY)
    {
        player_controller_obj.up_key = keyboard_lastkey;
    }
    else if (argument0 == DOWN_KEY)
    {
        player_controller_obj.down_key = keyboard_lastkey;
    }
    
    listening = false;
}
