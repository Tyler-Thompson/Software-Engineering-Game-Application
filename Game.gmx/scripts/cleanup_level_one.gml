/*
* cleanup_level_one()
*
* ends level one simulation by cleaning it up
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

with (player) { instance_destroy(); }
with (item) { instance_destroy(); }
with (item_npc) { instance_destroy(); }
with (minigame) { instance_destroy(); }
with (minigame_npc) { instance_destroy(); }
with (enemy) { instance_destroy(); }
with (boss) { instance_destroy(); }
