/*
* action codes: 0: basic attack, 1: run
*/
action = enemy_choice();

if(action == 0 or (is_boss() and battle_controller_obj.enemy_power = 0))
{
    if(battle_controller_obj.enemy_attack > player_controller_obj.my_defense)
    {
        player_controller_obj.current_hp -= (battle_controller_obj.enemy_attack - player_controller_obj.my_defense);
        player_controller_obj.my_defense = min(0, player_controller_obj.my_defense);
        if(player_controller_obj.current_hp < 0)
        {
            player_controller_obj.current_hp = 0;
        }
    }
    else
    {
        player_controller_obj.my_defense -= battle_controller_obj.enemy_attack;
    }
    draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
    draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " attacked! " + string(battle_controller_obj.enemy_attack) + " damage dealt.";
}
else if(action == 1)
{
    if(is_boss())
    {
      if(has_ability("firebreath"))
      {
        if(irandom(4) >= 3)
        {
          crit_damage = 1+irandom(2);
          battle_controller_obj.enemy_power -= 10;
          battle_controller_obj.enemy_power = max(0, battle_controller_obj.enemy_power);
          player_controller_obj.current_hp -= crit_damage*battle_controller_obj.enemy_attack;
          if(crit_damage >= 3)
          {
            player_controller_obj.max_hp -= 10;
            draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
            draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " breathed fire! " + string(crit_damage*battle_controller_obj.enemy_attack) + " damage dealt to your hp. Your armor was destroyed and you lost 10 max hp!";
          }
          else
          {
            draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
            draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " breathed fire! " + string(crit_damage*battle_controller_obj.enemy_attack) + " damage dealt to your hp. Any armor was destroyed.";
          }
          player_controller_obj.my_defense = min(0, player_controller_obj.my_defense);
          if(player_controller_obj.current_hp < 0)
          {
            player_controller_obj.current_hp = 0;
          }
        }
        else
        {
          draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
          draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " breathed fire, but missed! That was close!";
        }
      }
      else if(has_ability("touchofdeath"))
      {
        var damage_dealt = 2*battle_controller_obj.enemy_attack;
        damage_player(damage_dealt);
        if(player_battle_obj.sprite_index != priestess_spr or irandom(1) == 0)
        {
          player_controller_obj.my_attack -= 1;
          draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
          draw_text_effect.text_to_draw = "Death's presence weakens you. You took " + string(damage_dealt) + " damage! Your attack is permanently reduced by 1.";        
        }
        else
        {
          draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
          draw_text_effect.text_to_draw = "You feel your faith holding back the worst effects of Death's aura! You took " + string(damage_dealt) + " damage.";
        }
      }
    }
    else if(irandom(5) >= 4)
    {
      draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
      draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " cowers in fear!";
      end_battle(2);
    }
    else
    {
      draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
      draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " tried to run, but failed.";
    }
}
