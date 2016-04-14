/*
* enemy_check_direction()
*
* sets the enemy sprite direction properly
*/

NO_MOVE_SPEED = 0;
IMAGE_FLIP_BOUNDARY = 0;

if (my_hspeed < NO_MOVE_SPEED && image_xscale < IMAGE_FLIP_BOUNDARY) || (my_hspeed > NO_MOVE_SPEED && image_xscale > IMAGE_FLIP_BOUNDARY)
{
    image_xscale = image_xscale * -1;
}
