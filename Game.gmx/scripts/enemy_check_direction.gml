/*
* enemy_check_direction()
*
* sets the enemy sprite direction properly
*/

if (hspeed < 0 && image_xscale < 0) || (hspeed > 0 && image_xscale > 0)
{
    image_xscale = image_xscale * -1;
}
