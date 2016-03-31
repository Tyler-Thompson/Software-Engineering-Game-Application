/*
 * unequip(string item_name)
 * takes as input the name of an item and unequips it from the player
 * returns true if unequipped successfully
 * false otherwise
 */

name = argument0;
item = get_item_info(name);
to_return = false;

if(item[0] == "weapon" and name == player_controller_obj.equip[0])
{
  for(i = 0; i < player_controller_obj.MAX_INVENTORY_SIZE; ++i)
  {
    if(not to_return and (is_undefined(player_controller_obj.player_inventory[i]) or player_controller_obj.player_inventory[i] == ""))
    {
      player_controller_obj.player_inventory[i] = player_controller_obj.equip[0];
      to_return = true;
    }
  }
  if(not to_return)
  {
    if(to_return)
    {
      draw_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
      draw_text_effect.text_to_draw = "Not enough room in inventory";
    }
    return to_return;
  }
  player_controller_obj.my_attack -= item[1];
  player_controller_obj.equip[0] = "";
}
else if(item[0] == "armor" and name == player_controller_obj.equip[1])
{
  for(i = 0; i < player_controller_obj.MAX_INVENTORY_SIZE; ++i)
  {
    if(not to_return and (is_undefined(player_controller_obj.player_inventory[i]) or player_controller_obj.player_inventory[i] == ""))
    {
      player_controller_obj.player_inventory[i] = player_controller_obj.equip[1];
      to_return = true;
    }
  }
  if(not to_return)
  {
    if(to_return)
    {
      draw_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
      draw_text_effect.text_to_draw = "Not enough room in inventory";
    }
    return to_return;
  }
  player_controller_obj.max_defense -= item[1];
  player_controller_obj.my_defense -= item[1];
  player_controller_obj.equip[1] = "";
}
if(to_return)
{
  draw_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
  draw_text_effect.text_to_draw = "Unequipped " + name;
}
return to_return;
