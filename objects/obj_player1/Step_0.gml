
if (keyboard_check(ord("A"))) {
	x_vel -= x_accel;	
}
if (keyboard_check(ord("D"))) {
	x_vel += x_accel;
}
if (keyboard_check_released(ord("A"))){
		x_vel = 0;
	}
if (keyboard_check_released(ord("D"))){
		x_vel = 0;
}





if (y > room_height - sprite_height /*&& respawn_timer <= 0*/) {
	//if(!instance_exists(obj_star)){
	//instance_create_layer(obj_player1.x, 1050, "Instances", obj_star);
	//}
	global.collideddamage = true;
}

// Inherit the parent event, run the logic defined in obj_player's Step Event now that we have our input
event_inherited();

