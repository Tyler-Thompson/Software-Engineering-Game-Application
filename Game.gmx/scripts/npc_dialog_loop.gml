/*
* npc_dialog_loop()
*
* loop an NPC object's dialog options
*/

dialog_counter += 1;

if (dialog_counter >= 180)
{
    dialog_counter = 0;
}

dialog_index = floor(dialog_counter/60);
