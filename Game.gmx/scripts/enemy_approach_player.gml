/*
* enemy_approach_player()
*
* Moves the enemy towards the player object.
*/

if (place_meeting(x,y,enemy_parent_obj))
{
    inst = instance_place(x,y,enemy_parent_obj)
    inst_hspeed = abs(inst.hspeed);
    inst_vspeed = abs(inst.vspeed);
    
    //collision between enemies detected; abort script
    if (inst.hspeed > 0 || inst.vspeed > 0)
    {
        exit;
    }
}

if (abs(hspeed) < my_speed && abs(vspeed) < my_speed && (vspeed != 0 || hspeed != 0))
{
    //initial detection; make effect
    instance_create(x,y-24,exclamation_effect_obj);
}

//set horizontal motion
if (player_obj.x > x)
{
    //player is to enemy's right
    hspeed = my_speed;
} 
else if (player_obj.x < x)
{
    //player is to enemy's left
    hspeed = -1*my_speed;
} 
else
{
    //player is at same x as enemy
    hspeed = 0;
}

//set vertical motion
if (player_obj.y > y)
{
    //player is to below enemy
    vspeed = my_speed;
} 
else if (player_obj.y < y)
{
    //player is above enemy
    vspeed = -1*my_speed;
} 
else
{
    //player is at same y as enemy
    vspeed = 0;
}

//these if statements account for very small differences in x and y between enemy and player
if (abs(player_obj.x - x) < my_speed)
{
    x = player_obj.x;
}
if (abs(player_obj.y - y) < my_speed)
{
    y = player_obj.y;
}

enemy_check_direction();
