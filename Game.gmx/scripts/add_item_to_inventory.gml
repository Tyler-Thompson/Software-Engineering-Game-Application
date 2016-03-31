/*
* add_item_to_inventory(item name)
* takes a string that is the name of an object and adds it to the player's inventory
*/
for(add_item_i = 0; add_item_i < player_controller_obj.MAX_INVENTORY_SIZE; ++add_item_i)
{
  if(is_undefined(player_controller_obj.player_inventory[add_item_i]) or player_controller_obj.player_inventory[add_item_i] == "")
  {
    player_controller_obj.player_inventory[add_item_i] = argument0;
    player_controller_obj.player_inventory_size += 1;
    return true;
  }
}
return false;
