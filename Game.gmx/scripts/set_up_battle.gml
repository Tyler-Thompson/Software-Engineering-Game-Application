/*
 * set_up_battle()
 * checks if the current room is the battle room, and if so, initializes the battle settings
 * including placing the player and enemies in the proper positions
 */
 

if(room == battle_room)
{
    get_enemy_information(enemy_name);
    battle_controller_obj.battle_over = false;
    battle_controller_obj.display_results = false;
    battle_controller_obj.turn = battle_controller_obj.PLAYER_TURN;
    player = instance_create(216, 120, player_battle_obj);
    enemy = instance_create(264, 120, enemy_battle_obj);
    enemy.sprite_index = battle_controller_obj.enemy_sprite;
    attack_btn = instance_create(48, 120, basic_attack_btn);
}
