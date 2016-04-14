/*
 * firebreath()
 * When called, executes the functionality for the special enemy skill firebreath
 */
 
//irandom(4) will randomly pick one of [0,1,2,3,4].  Setting it to >= 3 gives this if statement a 40% chance of occurring
if(irandom(4) >= 3)
{
    //randomly choose a critical damage multiplier.  The dragon's attack will be multiplied by this number (chosen from 1 to 3).
  crit_damage = 1+irandom(2);

    //the attack costs 10 power to use
  battle_controller_obj.enemy_power -= 10;

    //the dragon cannot go below 0 power
  battle_controller_obj.enemy_power = max(0, battle_controller_obj.enemy_power);

    //since the dragon's special ability is instantly destroying armor and applying damage without considering it,
    //the ability deals the damage to the player's hp without considering the amount of armor he/she has left
  player_controller_obj.current_hp -= crit_damage*battle_controller_obj.enemy_attack;

  //should never be >3, but this is to keep the game from crashing if it hits a bug.
  if(crit_damage >= 3)
  {
      //since 3 is the max damage, and has roughly an 8% chance of occurring from the beginning of the enemy's turn, when it is picked, it
      //reduces the player's max_hp by 10
    player_controller_obj.max_hp -= 10;
    draw_text_over_object(battle_controller_obj.enemy_name + " breathed fire! " + string(crit_damage*battle_controller_obj.enemy_attack) + " damage dealt to your hp. Your armor was destroyed and you lost 10 max hp!", enemy_battle_obj);
  }
  else
  {
    draw_text_over_object(battle_controller_obj.enemy_name + " breathed fire! " + string(crit_damage*battle_controller_obj.enemy_attack) + " damage dealt to your hp. Any armor was destroyed.", enemy_battle_obj);
  }
    //if the player's armor is below 0 (indicating that the player has removed some damaged armor)
    //then it should stay below 0
  player_controller_obj.my_defense = min(0, player_controller_obj.my_defense);
  player_controller_obj.current_hp = max(0, player_controller_obj.current_hp);
}
else
{
  draw_text_over_object(battle_controller_obj.enemy_name + " breathed fire, but missed! That was close!", enemy_battle_obj);
}
