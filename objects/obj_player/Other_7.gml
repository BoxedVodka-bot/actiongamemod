// Game Maker auto-loops animations, so if we want to play a one-shot, we have to listen 
// for the animation end and then manually stop it playing and freeze it on the last frame
image_speed = 0;
image_index = image_number-1;