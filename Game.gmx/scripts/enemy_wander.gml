/*
* enemy_wander()
*
* Makes the enemy wander in a semi-random pattern.
*/

wander_speed = my_speed/4;

if (my_hspeed == 0 && my_vspeed == 0) || (my_hspeed == my_speed || my_vspeed == my_speed)
{
    //enemy is not moving or was previously pursuing player; begin random movement
    my_vspeed = choose(-1*wander_speed, 0, wander_speed);
    my_hspeed = choose(-1*wander_speed, 0, wander_speed);
    
    enemy_check_direction();
}
else
{
    //enemy is currently moving in a given direction
    
    //give 1% random chance per game step to change direction
    if (random(1) > 0.99)
    {
        my_vspeed = choose(-1*wander_speed, 0, wander_speed);
        my_hspeed = choose(-1*wander_speed, 0, wander_speed);
    }
    
    if ((x > room_width && my_hspeed > 0) || (x < 0 && my_hspeed < 0))
    {
        //moving outside room; turn around
        my_hspeed = -1*my_hspeed;
    }
    if ((y > room_height && my_vspeed > 0) || (y < 0 && my_vspeed < 0))
    {
        //moving outside room; turn around
        my_vspeed = -1*my_vspeed
    }
    
    enemy_check_direction();
}
