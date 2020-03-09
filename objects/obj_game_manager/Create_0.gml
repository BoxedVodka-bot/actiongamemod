curr_num_platforms = 0; // the number of platforms currently in the room
min_num_platforms = 4; // the min number of platforms we want in the room at any time
max_num_platforms = 20; // the max number of platforms we want in the room at any time (used only for initial population)
targ_platforms = 0;

// For this demo, we're going to spawn platforms at fixed locations, organized into rows and columns.
// Doing this means we will have spawn positions across the entire room regardles of the room size.
// Note that this isn't necessarily how the project you're cloning places new clouds (i.e. with
// fixed valid positions). I recommend paying close attention to the spawn behavior and trying to
// reverse-engineer the behavior for cloud placement.

// Calculate x positions (columns) for platforms to spawn at based on:
/*var w = sprite_get_width(spr_platform); // column width
var bx = w/2; // buffer from the left wall for the first column
var sx = 3; // spacing: number of columns between placement columns
platform_spawnpos_x = []; // array to store the actual positions
var i = 0;
while (bx+(w*sx*i) < room_width) {
	platform_spawnpos_x[i] = bx+(w*sx*i);
	i++;
}

// Now do it for y (rows)
var h = 50; // row height
var by = h*2; // buffer from the ceiling for the first row
var sy = 3; // spacing: number of rows between placement rows
platform_spawnpos_y = []; // array to store the actual positions
i = 0;
while (by+(h*sy*i) < room_height - 300) {
	platform_spawnpos_y[i] = by+(h*sy*i);
	i++;
}
*/
alarm[1] = room_speed;