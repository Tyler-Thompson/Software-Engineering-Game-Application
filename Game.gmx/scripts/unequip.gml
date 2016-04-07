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
    draw_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
    draw_text_effect.text_to_draw = "Not enough room in inventory";
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
    draw_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
    draw_text_effect.text_to_draw = "Not enough room in inventory"; 
    return unequip_to_return;
  }
  player_controller_obj.max_defense -= unequip_item_info[1];
  player_controller_obj.my_defense -= unequip_item_info[1];
  player_controller_obj.equip[1] = "";
}
if(unequip_to_return)
{
  draw_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
  draw_text_effect.text_to_draw = "Unequipped " + name;
  increment_inventory_size();
}
return unequip_to_return;
