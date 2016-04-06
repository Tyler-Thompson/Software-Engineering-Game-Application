/*
* rock_rotate()
*
* rotates a rock object
*/

direction += rotation_velocity;

if (direction > 360) 
{ 
    direction = direction mod 360; 
}
