/*
 * remove_from_inventory(string item_name)
 * takes as input the name of an item and removes one instance of
 * it from the inventory if it exists
 * if an item is removed, returns true
 * returns false otherwise
 */

for(remove_from_inventory_i = 0; remove_from_inventory_i < player_controller_obj.player_inventory_size; ++remove_from_inventory_i)
{
  if(not is_undefined(player_controller_obj.player_inventory[remove_from_inventory_i]) and player_controller_obj.player_inventory[remove_from_inventory_i] == argument0)
  {
    player_controller_obj.player_inventory[remove_from_inventory_i] = "";
    return true;
  }
}
return false;
