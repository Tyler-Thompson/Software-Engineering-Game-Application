/*
* end_battle(int result)
* 0: player win, 1: enemy_win, 2: inconclusive (generally one or the other runs from the battle)
*/
result = argument0;
if(result == 0)
{
  player_victory();
}
else if(result == 1)
{
  player_loss();
}

