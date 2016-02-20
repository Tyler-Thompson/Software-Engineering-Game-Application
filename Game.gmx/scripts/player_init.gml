/** 
* player_init()
*
* Initializes variables for the player object and performs initialization actions
*/

//constant initialization
LEFT_DIRECTION = 0;
RIGHT_DIRECTION = 1;

//variable initialization
movement_speed = 2;
image_speed = 0.1;
player_direction = LEFT_DIRECTION;
sprite_index = player_controller_obj.spr_name[player_controller_obj.sprite_num];
image_xscale = player_controller_obj.sprite_x_scale;
image_yscale = player_controller_obj.sprite_y_scale;
