/*
 * touchofdeath()
 * When called, this script executes the functionality for the special ability touchofdeath
 */

 // touchofdeath has a 100% hit rate when selected and deals twice the normal damage
var damage_dealt = 2*battle_controller_obj.enemy_attack;

damage_player(damage_dealt);

 //If the player is playing a priestess of some type, then they get a 50% to block the permanent attack reduction
if((player_battle_obj.sprite_index != priestess_spr and player_battle_obj.sprite_index != white_priestess_spr) or irandom(1) == 0)
{
  player_controller_obj.my_attack -= 1;
  draw_text_over_object("Death's presence weakens you. You took " + string(damage_dealt) + " damage! Your attack is permanently reduced by 1.", enemy_battle_obj);
}
else
{
  draw_text_over_object("You feel your faith holding back the worst effects of Death's aura! You took " + string(damage_dealt) + " damage.", enemy_battle_obj);
}
