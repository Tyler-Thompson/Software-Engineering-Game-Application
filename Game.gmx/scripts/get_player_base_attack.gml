/*
 * get_player_base_attack()
 * returns the players current attack minus the weapon bonus
 */
if(player_controller_obj.equip[0] != "")
{
  var get_base_attack_item = get_item_info(player_controller_obj.equip[0]);
  return player_controller_obj.my_attack - get_base_attack_item[1];
}
return player_controller_obj.my_attack;
