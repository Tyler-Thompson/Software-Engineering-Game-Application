if(battle_controller_obj.turn == battle_controller_obj.PLAYER_TURN)
{
    battle_controller_obj.turn = (battle_controller_obj.turn + 1) mod 2;
}
else
{
    if(battle_controller_obj.wait >= battle_controller_obj.DELAY)
    {
        enemy_turn();
        battle_controller_obj.turn = (battle_controller_obj.turn + 1) mod 2;
        battle_controller_obj.wait = 0;
    }
    else
    {
        battle_controller_obj.wait += 1;
    }
    
    
}

