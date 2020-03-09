// I like to put tuning variables in the Create Event (rather than the Variable Definitions),
// because I find it easier to view and navigate, but either place will work. 
// I also prefer this approach because it physically separates variables that can be changed per-instance 
// (only variables created in Variable Definitions can be changed on instances placed in the room) from
// variables that shouldn't be configured differently between instances.

grav = 0.5; // Constant downward force 
gravity = 0; // WATCH OUT! 'gravity' is a built-in Game Maker variable and using it will create problems.
			 // Make sure you name your gravity variable something else, like I did above.

jump_vel = -16; // initial velocity of a jump

x_accel = 0.8; // acceleration rate for horizontal movement
x_vel = 0; // current horizontal velocity
y_vel = 0; // current vertical velocity

x_vel_max = 3; // max horizontal velocity

x_move = 0; // since we'll be dealing with fractional velocities, separate variable for actual movement
y_move = 0; // since we'll be dealing with fractional velocities, separate variable for actual movement

gone = false; // var to track if we've fallen out of the world

// Make sure to set the sprite based on the variable (inherited versions have this var set appropriately)
sprite_index = player_sprite;
// If we're doing the player_num approach, you can hard-code this based on that variable, too:
if (player_num == 1) {
	sprite_index = spr_player1;
	platform_sprites = spr_platform_p1; // also set the sprites that platforms use if this player touches it
} else if (player_num == 2) {
	sprite_index = spr_player2;
	platform_sprites = spr_platform_p2; // also set the sprites that platforms use if this player touches it
}

global.player_dead = false;
global.pd1 = false;
global.pd2 = false;

curr_num_platforms = 0;
desired_num_platforms = 20;
platform_spawn_buffer_ceiling = 64;
platform_spawn_buffer_ground = 60;
platform_spawn_buffer_wall = 10;

respawn_timer = -1;

sy2 = 0;