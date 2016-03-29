/*
 * player_victory()
 * this script should be called when the player wins a battle
 */

with(draw_text_effect_obj) { instance_destroy(); }
OFFSET_HEIGHT = 2;
with(player)
{ 
  instance_destroy();
}
with(enemy)
{
  instance_destroy();
}
with(attack_btn)
{
  instance_destroy();
}
get_loot();
battle_controller_obj.battle_over = true;
battle_controller_obj.display_results = true;
player_controller_obj.current_gold += battle_controller_obj.gold_reward;
continue_btn = instance_create(room_width/2,0, return_btn);
continue_btn.y = room_height - continue_btn.sprite_height * OFFSET_HEIGHT;
with(continue_btn)
{
  button_init("Continue");
}

