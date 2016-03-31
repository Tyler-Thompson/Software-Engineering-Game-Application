/*
* action codes: 0: basic attack, 1: run
*/
action = enemy_choice();

if(action == 0)
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
    if(irandom(5) >= 4)
    {
        end_battle(2);
    }
    draw_text_effect = instance_create(enemy_battle_obj.x, enemy_battle_obj.y - enemy_battle_obj.sprite_height/2, draw_text_effect_obj);
    draw_text_effect.text_to_draw = battle_controller_obj.enemy_name + " tried to run, but failed.";
}
