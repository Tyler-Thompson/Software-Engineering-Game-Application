/*
 * unequip(string item_name)
 * takes as input the name of an item and unequips it from the player
 * returns true if unequipped successfully
 * false otherwise
 */

name = argument0;
unequip_item_info = get_item_info(name);
unequip_to_return = false;

if(unequip_item_info[0] == "weapon" and name == player_controller_obj.equip[0])
{
  for(i = 0; i < player_controller_obj.MAX_INVENTORY_SIZE; ++i)
  {
    if(not unequip_to_return and (is_undefined(player_controller_obj.player_inventory[i]) or player_controller_obj.player_inventory[i] == ""))
    {
      player_controller_obj.player_inventory[i] = player_controller_obj.equip[0];
      unequip_to_return = true;
    }
  }
  if(not unequip_to_return)
  {
      if (instance_number(draw_text_effect_obj) == 0)
      {
        draw_text_over_object("Not enough room in inventory",player_obj)
      }
    return unequip_to_return;
  }
  player_controller_obj.my_attack -= unequip_item_info[1];
  player_controller_obj.equip[0] = "";
}
else if(unequip_item_info[0] == "armor" and name == player_controller_obj.equip[1])
{
  for(i = 0; i < player_controller_obj.MAX_INVENTORY_SIZE; ++i)
  {
    if(not unequip_to_return and (is_undefined(player_controller_obj.player_inventory[i]) or player_controller_obj.player_inventory[i] == ""))
    {
      player_controller_obj.player_inventory[i] = player_controller_obj.equip[1];
      unequip_to_return = true;
    }
  }
  if(not unequip_to_return)
  {
      if (instance_number(draw_text_effect_obj) == 0)
      {
        draw_text_over_object("Not enough room in inventory",player_obj)
      } 
    return unequip_to_return;
  }
  player_controller_obj.max_defense -= unequip_item_info[1];
  player_controller_obj.my_defense -= unequip_item_info[1];
  player_controller_obj.equip[1] = "";
}
if(unequip_to_return)
{
  if (instance_number(draw_text_effect_obj) == 0)
  {
    draw_text_over_object("Unequipped " + name,player_obj)
  }  
}
return unequip_to_return;
