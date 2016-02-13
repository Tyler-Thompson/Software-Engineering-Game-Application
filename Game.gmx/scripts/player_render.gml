/** 
* player_render()
*
* Render the player_obj sprite to the screen
*/

if (player_direction == LEFT_DIRECTION)
{
    //player is facing left
    draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha);
}
else
{
    //player is facing right
    draw_sprite_ext(sprite_index,-1,x,y,image_xscale*-1,image_yscale,direction,image_blend,image_alpha);
}
