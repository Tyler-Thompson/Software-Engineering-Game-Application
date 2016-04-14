/*
* rock_rotate()
*
* rotates a rock object
*/

direction += rotation_velocity;

MAX_ROTATION = 360;

if (direction > MAX_ROTATION) 
{ 
    direction = direction mod MAX_ROTATION; 
}
