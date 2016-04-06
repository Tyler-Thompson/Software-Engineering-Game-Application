/*
* enemy_check_direction()
*
* sets the enemy sprite direction properly
*/

if (my_hspeed < 0 && image_xscale < 0) || (my_hspeed > 0 && image_xscale > 0)
{
    image_xscale = image_xscale * -1;
}
