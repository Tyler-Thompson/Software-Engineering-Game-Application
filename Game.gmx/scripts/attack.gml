turn = argument0;
if(turn == battle_controller_obj.PLAYER_TURN)
{
    if(player_controller_obj.my_attack > battle_controller_obj.enemy_defense)
    {
        battle_controller_obj.enemy_health -= (player_controller_obj.my_attack - battle_controller_obj.enemy_defense);
        if(battle_controller_obj.enemy_health <= 0)
        {
            if(has_ability("ResilientLife") and irandom(4) == 0)
            {
              draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
              draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " survived what should have been a fatal blow!";
              battle_controller_obj.enemy_health = 1;
            }
            else
            {
              battle_controller_obj.enemy_health = 0;
            }
            
        }
        battle_controller_obj.enemy_defense = 0;
    }    
    else
    {
        battle_controller_obj.enemy_defense = battle_controller_obj.enemy_defense - player_controller_obj.my_attack;
    }
}
