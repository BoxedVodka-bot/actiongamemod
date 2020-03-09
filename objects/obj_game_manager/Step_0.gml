// Check the current number of platforms that exist in the room
curr_num_platforms = instance_number(obj_platform);


if (curr_num_platforms == 0) { // if we're starting from 0, the room just started and we need to populate to max
	targ_platforms = min_num_platforms;
}
//} else { // otherwise, we're down to our last few platforms and need to spawn some to get back to minimum
//	targ_platforms = max_num_platforms;	
//}

// spawn platforms until we have enough
while (curr_num_platforms < 4) {
	var spawn_x = random_range(20, 1000);
	var spawn_y = random_range(100, 800);
	// Spawn the actual platform and store the instance in a variable in case we want to do anything more with it.
	// I want you to figure out what, if anything else, to do here, but storage of the spawned instance in a variable
	// is another tool that's useful in a variety of contexts.
	var new_platform = instance_create_layer(spawn_x, spawn_y, "Instances", obj_platform);
	
	curr_num_platforms++;
}