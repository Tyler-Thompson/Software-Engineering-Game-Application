/*
* enemy_wander()
*
* Makes the enemy wander in a semi-random pattern.
*/

wander_speed = my_speed/4;

if (hspeed == 0 && vspeed == 0) || (hspeed == my_speed || vspeed == my_speed)
{
    //enemy is not moving or was previously pursuing player; begin random movement
    vspeed = choose(-1*wander_speed, 0, wander_speed);
    hspeed = choose(-1*wander_speed, 0, wander_speed);
    
    enemy_check_direction();
}
else
{
    //enemy is currently moving in a given direction
    
    //give 1% random chance per game step to change direction
    if (random(1) > 0.99)
    {
        vspeed = choose(-1*wander_speed, 0, wander_speed);
        hspeed = choose(-1*wander_speed, 0, wander_speed);
    }
    
    if ((x > room_width && hspeed > 0) || (x < 0 && hspeed < 0))
    {
        //moving outside room; turn around
        hspeed = -1*hspeed;
    }
    if ((y > room_height && vspeed > 0) || (y < 0 && vspeed < 0))
    {
        //moving outside room; turn around
        vspeed = -1*vspeed
    }
    
    enemy_check_direction();
}
