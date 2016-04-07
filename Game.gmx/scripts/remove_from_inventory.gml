/*
 * remove_from_inventory(string item_name, int location)
 * takes as input the name of an item and removes one instance of
 * it from the inventory if it exists
 * if an item is removed, returns true
 * returns false otherwise
 * if the location is provided, it will search the location provided only, otherwise it will remove the
 * first instance of the named object
 */
if(not is_undefined(argument1))
{
  if(not is_undefined(player_controller_obj.player_inventory[argument1]) and player_controller_obj.player_inventory[argument1] == argument0)
  {
    player_controller_obj.player_inventory[argument1] = "";
    return true;
  }
  return false;
}
else
{
    for(remove_from_inventory_i = 0; remove_from_inventory_i < player_controller_obj.player_inventory_size; ++remove_from_inventory_i)
    {
      if(not is_undefined(player_controller_obj.player_inventory[remove_from_inventory_i]) and player_controller_obj.player_inventory[remove_from_inventory_i] == argument0)
      {
        player_controller_obj.player_inventory[remove_from_inventory_i] = "";
        decrement_inventory_size();
        return true;
      }
    }
    return false;
}
