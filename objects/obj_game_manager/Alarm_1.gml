if(curr_num_platforms < max_num_platforms){
	var spawn_x = random_range(20, 1000);
	var spawn_y = random_range(100, 800);
	var new_platform = instance_create_layer(spawn_x, spawn_y, "Instances", obj_platform);
	
	// We spawned a new platform, so make sure to update the count
	curr_num_platforms++;
	
	
}
alarm[1] = 0.5*room_speed