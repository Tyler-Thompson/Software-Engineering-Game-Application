turn = argument0;
if(turn == battle_controller_obj.PLAYER_TURN)
{
    if(player_controller_obj.my_attack > battle_controller_obj.enemy_defense)
    {
        battle_controller_obj.enemy_health -= (player_controller_obj.my_attack - battle_controller_obj.enemy_defense);
        if(battle_controller_obj.enemy_health <= 0)
        {
            battle_controller_obj.enemy_health = 0;
            
        }
        battle_controller_obj.enemy_defense = 0;
    }    
    else
    {
        battle_controller_obj.enemy_defense = battle_controller_obj.enemy_defense - player_controller_obj.my_attack;
    }
}
