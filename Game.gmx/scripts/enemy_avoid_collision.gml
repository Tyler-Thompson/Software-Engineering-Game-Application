/*
* enemy_avoid_collision()
*
* Circumvents collisions between enemy objects so that they do not occupy the same space.
*/

if (abs(other.my_hspeed) == other.my_speed || abs(other.my_vspeed) == other.my_speed)
{
    my_hspeed = 0;
    my_vspeed = 0;
}
