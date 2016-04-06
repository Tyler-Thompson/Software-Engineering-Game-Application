/*
* rock_init()
*
* initializes a rock obj for the rock dodge minigame
*/

//initializes a random rock image
image_index = irandom(image_number-1);

//makes animation not play
NO_ANIMATION_SPEED = 0;
image_speed = NO_ANIMATION_SPEED;

//sets rotational speed
rotation_velocity = random(6);

//sets downward velocity
MIN_VELOCITY = 3;
downward_velocity = MIN_VELOCITY + random(4);
