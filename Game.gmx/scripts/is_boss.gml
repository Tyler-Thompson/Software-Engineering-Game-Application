/*
 * is_boss()
 * returns true if the current enemy is a boss, false otherwise
 */
 
if(string_pos("boss", battle_controller_obj.enemy_abilities))
{
  return true;
}
return false;
