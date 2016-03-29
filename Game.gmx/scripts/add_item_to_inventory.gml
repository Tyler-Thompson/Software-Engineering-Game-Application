/*
* add_item_to_inventory(item name)
* takes a string that is the name of an object and adds it to the player's inventory
*/

if(player_controller_obj.player_inventory_size < player_controller_obj.MAX_INVENTORY_SIZE)
{
  player_controller_obj.player_inventory[array_length_1d(player_controller_obj.player_inventory)] = argument0;
  player_controller_obj.player_inventory_size += 1;
}
