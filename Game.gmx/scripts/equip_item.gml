/*
 * equip_item(string item, int location)
 * takes as input the name of an item in the player's inventory - and equips it
 * if the equipping was successfull, returns true, returns false otherwise
 */

to_return = false;
if(is_in_inventory(argument0) and not is_equipped(argument0))
{
  item_info = get_item_info(argument0);
  if(item_info[0] == "armor")
  {
    //equip[0] = weapon, equip[1] = armor
    unequip(player_controller_obj.equip[1]);
    player_controller_obj.equip[1] = argument0;
    player_controller_obj.max_defense += item_info[1];
    player_controller_obj.my_defense += item_info[1];
    to_return = true;
  }
  else if(item_info[0] == "weapon")
  {
    unequip(player_controller_obj.equip[0]);
    player_controller_obj.equip[0] = argument0;
    player_controller_obj.my_attack += item_info[1];
    to_return = true;
  }
}
if(to_return)
{
  remove_from_inventory(argument0,argument1);
}
return to_return;
