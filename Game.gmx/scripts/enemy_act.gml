/*
* enemy_act()
*
* Makes the decision of how an enemy should act.
*/

if (instance_number(player_obj) == 0) { exit; } //aborts script if player does not exist for any reason


if (distance_to_object(player_obj) > my_vision)
{
    //the player is too far away; enemy should wander
    enemy_wander();
}
else
{
    //the player is close; enemy should approach to attack
    enemy_approach_player();
}

//moves the enemy
if (!place_meeting(x+my_hspeed,y,block_parent))
{
    x += my_hspeed;
}
else
{
    if (my_hspeed > 0) 
    {
        RIGHT_DIR = 0;
        move_contact_all(RIGHT_DIR,my_hspeed);
    }
    else if (my_hspeed < 0)
    {
        LEFT_DIR = 180;
        move_contact_all(LEFT_DIR,my_hspeed);
    }
    my_hspeed = -1*my_hspeed;
}

if (!place_meeting(x,y+my_vspeed,block_parent))
{
    y += my_vspeed;
}
else
{
    if (my_vspeed > 0) 
    {
        DOWN_DIR = 270;
        move_contact_all(DOWN_DIR,my_vspeed);
    }
    else if (my_vspeed < 0)
    {
        UP_DIR = 90;
        move_contact_all(UP_DIR,my_vspeed);
    }
    my_vspeed = -1*my_vspeed;
}
