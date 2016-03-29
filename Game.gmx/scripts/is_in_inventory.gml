/*
 * is_in_inventory(string item_name)
 * takes as input the name of an item and determines if it is in the player's inventory
 */
name = argument0;

for(i = 0; i < array_length_1d(player_controller_obj.player_inventory); ++i)
{
  if(player_controller_obj.player_inventory[i] == name)
  {
    return true;
  }
}

return false;
