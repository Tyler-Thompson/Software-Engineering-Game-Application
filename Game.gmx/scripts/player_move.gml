/** 
* player_move(change_x, change_y)
*
* Move the player object by a horizontal value and/or a vertical value.
* 
* @argument0: amount to change player's x value by
* @argument1: amount to change player's y value by
*/

if (!place_meeting(x+argument0,y,block_parent))
{
    x += argument0;
}

if (!place_meeting(x,y+argument1,block_parent))
{
    y += argument1;
}
