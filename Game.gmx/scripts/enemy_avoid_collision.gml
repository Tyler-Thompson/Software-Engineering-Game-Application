/*
* enemy_avoid_collision()
*
* Circumvents collisions between enemy objects so that they do not occupy the same space.
*/

if (abs(other.hspeed) == other.my_speed || abs(other.vspeed) == other.my_speed)
{
    hspeed = 0;
    vspeed = 0;
}
