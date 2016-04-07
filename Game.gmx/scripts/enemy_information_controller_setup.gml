/*
 *  enemy_information_setup()
 *  Holds the information for all of the enemies
 * "name level region attack defense health power [special_abilities]"
 */

//normal enemies 
enemy_controller_setup_i = 0;
add_enemy_information('skeleton 1 forest 10 10 15 20 [ResilientLife]', enemy_controller_setup_i);
++enemy_controller_setup_i;
add_enemy_information('slime 1 forest 100 15 10 15 []', enemy_controller_setup_i);
++enemy_controller_setup_i;
add_enemy_information('goblin_warrior 1 forest 6 6 10 10 []', enemy_controller_setup_i);
++enemy_controller_setup_i;
add_enemy_information('goblin_archer 1 forest 4 5 12 10 []', enemy_controller_setup_i);
++enemy_controller_setup_i;

//bosses
add_enemy_information('Dragon_Lord 2 forest 25 50 100 30 [boss, firebreath]', enemy_controller_setup_i);
++enemy_controller_setup_i;
