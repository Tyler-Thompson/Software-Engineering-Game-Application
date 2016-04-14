/*
* action codes: 0: basic attack, 1: run
*/
action = enemy_choice();

//if a 0 is returned, that indicates that the creature must make a normal attack
//if a 1 or a 0 is returned, but the enemy has no power left, they must make a normal attack regardless
if(action == 0 or (is_boss() and battle_controller_obj.enemy_power = 0))
{
  basic_attack();
}
else if(action == 1)
{
    //if a 1 has been recieved, then the creature makes its alternative choice to the normal attack
    //if there is no second option, then they do nothing instead
    //currently, only bosses have special abilities that can be used here
    if(is_boss())
    {
      //checks if the boss has the firebreath ability and uses it if so
      if(has_ability("firebreath"))
      {
        firebreath();
      }
      //checks if the boss has the touchofdeath ability and uses it if so
      else if(has_ability("touchofdeath"))
      {
        touchofdeath();
      }
    }
    else
    {
      do_nothing();
    }
}
