/*
* simulate_level_one()
*
* sets up a simulation of the necessary elements of level one.
* Necessary elements include:
* 1. Player
* 2. Item shop & NPC
* 3. Minigame & NPC
* 4. Enemy
* 5. Boss
*
* Graphical display of simulated level:
*****************************************************
*       3                                           *
*       3               2                           *
*1->                    2                          5*
*                                                   *
*                       4                           *
*****************************************************
*/

NPC_OFFSET = 24;

PLAYER_X = 0;
PLAYER_Y = room_height/2;

ITEM_X = room_width/2;
ITEM_Y = room_height/2;

ITEM_NPC_X = room_width/2;
ITEM_NPC_Y = room_height/2-NPC_OFFSET;

MINIGAME_X = room_width/4;
MINIGAME_Y = room_height/4;

MINIGAME_NPC_X = room_width/4;
MINIGAME_NPC_Y = room_height/4-NPC_OFFSET;

ENEMY_X = room_width/2;
ENEMY_Y = room_height;

BOSS_X = room_width;
BOSS_Y = room_height/2;

player = instance_create(PLAYER_X,PLAYER_Y,player_obj);
item = instance_create(ITEM_X,ITEM_Y,buyable_health_potion_obj);
item_npc = instance_create(ITEM_NPC_X,ITEM_NPC_Y,shopkeeper_obj);
minigame = instance_create(MINIGAME_X,MINIGAME_Y,minigame_rock_dodge_icon_obj);
minigame_npc = instance_create(MINIGAME_NPC_X,MINIGAME_NPC_Y,minigame_npc_obj);
enemy = instance_create(ENEMY_X,ENEMY_Y,test_enemy_obj);
boss = instance_create(BOSS_X,BOSS_Y,dragon_lord_obj);
