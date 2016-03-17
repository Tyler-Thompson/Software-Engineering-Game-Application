/*
* battle_test
*/
it("UT-19: Testing to make sure the battle room exists.", true, room_exists(battle_room));
enemy = instance_create(0,0,basic_attack_btn);
enemy_name = "skeleton";
get_enemy_information(enemy_name);
current_hp = player_controller_obj.current_hp;
armor = player_controller_obj.my_defense;
enemy_current_hp = battle_controller_obj.enemy_health;
enemy_armor = battle_controller_obj.enemy_defense;
attack(battle_controller_obj.turn);
it("UT-10: Testing to make sure player deals damage correctly.", true, enemy_armor + enemy_current_hp == battle_controller_obj.enemy_health + battle_controller_obj.enemy_defense + player_controller_obj.my_attack);
