/*
* enemy tests
*/
if (enemy_test_alarm == 0)
{
    enemy = instance_create(0,0,enemy_parent_obj);
}
/*
* enemy_act tests
*/
switch(enemy_test_alarm)
{
    case 0:
        it("Confirming enemy wanders if no player present", true, abs(enemy.hspeed) <= enemy.my_speed && abs(enemy.vspeed) <= enemy.my_speed);
        break;
    case 1:
        //creates a player_obj just inside the enemy's radius of aggression
        player = instance_create(enemy.x+enemy.my_vision-1,enemy.y,player_obj);
        break;
    case 2:
        it("Confirming enemy follows player if player present and within radius of aggression", true, abs(enemy.hspeed) == enemy.my_speed || abs(enemy.vspeed) == enemy.my_speed);
        with(player)
        {
            instance_destroy();
        }
        //creates a player_obj outside the enemy's radius of aggression
        player = instance_create(enemy.x+enemy.my_vision*2,enemy.y,player_obj);
        break;
    case 3:
        it("Confirming the enemy wanders if player is present but outside radius of aggression",  true, abs(enemy.hspeed) <= enemy.wander_speed && abs(enemy.vspeed) <= enemy.wander_speed);
        with(player)
        {
            instance_destroy();
        }
        break;
    default:
        enemy_complete = true;
        with (enemy)
        {
            instance_destroy();
        }
}
enemy_test_alarm += 1;
return enemy_complete;
