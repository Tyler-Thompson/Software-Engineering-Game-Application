/*
* enemy_choice()
* returns the action that the enemy decides to use this turn
*/
if(string_pos("boss",battle_controller_obj.enemy_abilities))
{
 return irandom(1);
}
if(player_controller_obj.my_attack > (battle_controller_obj.enemy_defense + battle_controller_obj.enemy_health))
{
    return irandom(1);
}
else
{
    return 0;
}
