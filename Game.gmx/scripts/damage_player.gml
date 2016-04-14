/*
 * damage_player(int damage)
 * takes as input an integer that is the amount of damage to deal to the player
 * and adjusts the player's stats accordingly
 */
var leftover = abs(player_controller_obj.my_defense - argument0); 
player_controller_obj.my_defense = max(0, player_controller_obj.my_defense - argument0);
if(player_controller_obj.my_defense == 0)
{
  player_controller_obj.current_hp = max(0, player_controller_obj.current_hp - leftover);
}

