/*
* action codes: 0: basic attack, 1: run
*/
action = enemy_choice();

if(action == 0)
{
    if(battle_controller_obj.enemy_attack > player_controller_obj.my_defense)
    {
        player_controller_obj.current_hp -= (battle_controller_obj.enemy_attack - player_controller_obj.my_defense);
        player_controller_obj.my_defense = 0;
        if(player_controller_obj.current_hp < 0)
        {
            player_controller_obj.current_hp = 0;
        }
    }
    else
    {
        player_controller_obj.my_defense -= battle_controller_obj.enemy_attack;
    }
}
else if(action == 1)
{
    if(irandom(5) >= 4)
    {
        end_battle(2);
    }
}
