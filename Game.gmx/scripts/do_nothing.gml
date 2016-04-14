/*
 * do_nothing()
 * When called, this script has the opponent do some version of nothing.
 */
 
if(irandom(5) >= 4)
{
  draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
  draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " cowers in fear!";
}
else
{
  draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
  draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " tried to run, but failed.";
}
