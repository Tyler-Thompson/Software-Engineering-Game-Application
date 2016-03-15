/*
* get_enemy_information(name)
* takes as input the name of the enemy and sets 
* the callers variables to the stats of the enemy
*/

name = argument0;
enemy_stats = "";
for(i = 0; i < array_height_2d(enemy_information_controller.enemy); ++i)
{
    if(enemy_information_controller.enemy[i, 0] == name)
    {
        battle_controller_obj.enemy_level = real(enemy_information_controller.enemy[i,1]);
        battle_controller_obj.enemy_region = enemy_information_controller.enemy[i,2];
        battle_controller_obj.enemy_attack = real(enemy_information_controller.enemy[i,3]);
        battle_controller_obj.enemy_defense = real(enemy_information_controller.enemy[i,4]);
        battle_controller_obj.enemy_max_defense = real(enemy_information_controller.enemy[i,4]);
        battle_controller_obj.enemy_max_health = real(enemy_information_controller.enemy[i,5]);
        battle_controller_obj.enemy_health = real(enemy_information_controller.enemy[i,5]);
        battle_controller_obj.enemy_power = real(enemy_information_controller.enemy[i,6]);
        battle_controller_obj.enemy_max_power = real(enemy_information_controller.enemy[i,6]);
        battle_controller_obj.enemy_abilities = enemy_information_controller.enemy[i,7];
        break;
    }
}
