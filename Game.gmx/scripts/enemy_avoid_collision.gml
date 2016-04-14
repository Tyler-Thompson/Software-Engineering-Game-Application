/*
* enemy_avoid_collision()
*
* Circumvents collisions between enemy objects so that they do not occupy the same space.
*/

NO_MOVE_SPEED = 0;

if (abs(other.my_hspeed) == other.my_speed || abs(other.my_vspeed) == other.my_speed)
{
    my_hspeed = NO_MOVE_SPEED;
    my_vspeed = NO_MOVE_SPEED;
}
