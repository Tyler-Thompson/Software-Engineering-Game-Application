/*
* enemy_wander()
*
* Makes the enemy wander in a semi-random pattern.
*/

wander_speed = my_speed/4;

NO_MOVE_SPEED = 0;
ROOM_BOUNDARY_X = 0;
ROOM_BOUNDARY_Y = 0;

if (my_hspeed == NO_MOVE_SPEED && my_vspeed == NO_MOVE_SPEED) || (my_hspeed == my_speed || my_vspeed == my_speed)
{
    //enemy is not moving or was previously pursuing player; begin random movement
    my_vspeed = choose(-1*wander_speed, NO_MOVE_SPEED, wander_speed);
    my_hspeed = choose(-1*wander_speed, NO_MOVE_SPEED, wander_speed);
    
    enemy_check_direction();
}
else
{
    //enemy is currently moving in a given direction
    
    //give 1% random chance per game step to change direction
    if (random(1) > 0.99)
    {
        my_vspeed = choose(-1*wander_speed, NO_MOVE_SPEED, wander_speed);
        my_hspeed = choose(-1*wander_speed, NO_MOVE_SPEED, wander_speed);
    }
    
    if ((x > room_width && my_hspeed > NO_MOVE_SPEED) || (x < ROOM_BOUNDARY_X && my_hspeed < NO_MOVE_SPEED))
    {
        //moving outside room; turn around
        my_hspeed = -1*my_hspeed;
    }
    if ((y > room_height && my_vspeed > NO_MOVE_SPEED) || (y < ROOM_BOUNDARY_Y && my_vspeed < NO_MOVE_SPEED))
    {
        //moving outside room; turn around
        my_vspeed = -1*my_vspeed
    }
    
    enemy_check_direction();
}
