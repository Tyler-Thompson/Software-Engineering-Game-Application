/*
 * basic_attack()
 * When called, this script will have the enemy perform a basic
 * attack on the player
 */

 //if the enemies attack is greater than the player's defense, then the leftover
 //damage will be dealt to the player's hp
if(battle_controller_obj.enemy_attack > player_controller_obj.my_defense)
{
    player_controller_obj.current_hp -= (battle_controller_obj.enemy_attack - player_controller_obj.my_defense);
    player_controller_obj.my_defense = min(0, player_controller_obj.my_defense);
    player_controller_obj.current_hp = max(0, player_controller_obj.current_hp);
}
//otherwise, we only need to worry about reducing the player's armor
else
{
    player_controller_obj.my_defense -= battle_controller_obj.enemy_attack;
}
draw_text_over_object(battle_controller_obj.enemy_name + " attacked! " + string(battle_controller_obj.enemy_attack) + " damage dealt.",enemy_battle_obj);
