/*
 * is_equipped(string item_name)
 * takes as input the name of an item and checks to see if the player has it equipped
 * if equipped, return true
 * otherwise, return false
 */

name = argument0;

for(i = 0; i < array_length_1d(player_controller_obj.equip); ++i)
{
  if(player_controller_obj.equip[i] == name)
  {
    return true;
  }
}

return false;
