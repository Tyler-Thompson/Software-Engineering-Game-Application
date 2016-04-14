/*
* rock_move()
*
* moves a rock
*/

y += downward_velocity;

//memory management
if (y > room_height)
{
    instance_destroy();
}
