/*
* enemy_init(speed, vision, name)
*
* Initializes an enemy object.
*
* @argument0: speed, the speed of the enemy being initialized.
* @argument1: vision, the distance (in pixels) which the enemy can detect the player from.
*/

START_SPEED_X = 0;
START_SPEED_Y = 0;
START_IMAGE_SPEED = 0.1;

image_speed = START_IMAGE_SPEED;

my_speed = argument0;
my_vision = argument1;
my_name = argument2;
my_hspeed = START_SPEED_X;
my_vspeed = START_SPEED_Y;

