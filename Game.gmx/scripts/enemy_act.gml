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
