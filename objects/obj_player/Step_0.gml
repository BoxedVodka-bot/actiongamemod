
if (player_num == 1 && global.player_dead == false) {
	if (keyboard_check_pressed(ord("A"))) {
		x_vel -= x_accel;	
	}
	if (keyboard_check_pressed(ord("D"))) {
		x_vel += x_accel;
	}
	if (keyboard_check_released(ord("A"))){
		x_vel = 0;
	}
	if (keyboard_check_released(ord("D"))){
		x_vel = 0;
	}
} else if (player_num == 2 && global.player_dead == false) {
	if (keyboard_check_pressed(ord("A"))) {
		x_vel -= x_accel;	
	}
	if (keyboard_check_pressed(ord("D"))) {
		x_vel += x_accel;
	}
	if (keyboard_check_released(ord("A"))){
		x_vel = 0;
	}
	if (keyboard_check_released(ord("D"))){
		x_vel = 0;
	}
}


x_vel = x_vel < 0 ? max(x_vel, -x_vel_max) : min(x_vel, x_vel_max);

y_vel += grav;

x_move = round(x_vel);
y_move = round(y_vel);

for (var i = 0; i < abs(x_move); i++) {
	if (x+sign(x_vel) >= room_width - sprite_width/2) { 
		if(!audio_is_playing(snd_wall)){
		audio_play_sound(snd_wall, 90, false);
	}
		x_vel *= -1; // reverse our velocity
	} 
	else if (x+sign(x_vel) <= 0) {
		if(!audio_is_playing(snd_wall)){
		audio_play_sound(snd_wall, 90, false);
	}
		x_vel = -x_vel; 
	}
	x += sign(x_vel);
}



var sy = sign(y_vel);

if (!gone){ 
	while (y_move != 0){ 
		
		var colliding = false; 
		var collidewith = noone; 
		
		if (sy >= 0){ 
			collidewith = instance_place(x, y+sy, obj_platform);
			if (collidewith != noone) 
			{
				if (place_meeting(x, y, collidewith) == false && global.player_dead == false){
					if(!audio_is_playing(snd_jump)){
						audio_play_sound(snd_jump, 80, false);
						}
						
					colliding = true;	
					if (collidewith.cloudsize == 0) {

						collidewith.sprite_index = spr_cloud0dis;
						collidewith.alarm[0] = collidewith.delete_time_duration; 
						collidewith.time_since_touched = -1;
					
					}else if (collidewith.cloudsize == 1) {
						
						collidewith.sprite_index = spr_cloud1dis;
						collidewith.alarm[0] = collidewith.delete_time_duration; 
						collidewith.time_since_touched = -1;
			
					}else if (collidewith.cloudsize == 2) {
						collidewith.sprite_index = spr_cloud2dis;
						collidewith.alarm[0] = collidewith.delete_time_duration; 
						collidewith.time_since_touched = -1;
			
					}else if (collidewith.cloudsize == 3) {
						collidewith.sprite_index = spr_cloud3dis;
						collidewith.alarm[0] = collidewith.delete_time_duration; 
						collidewith.time_since_touched = -1;
					}
					
				}
			}
			
		}
		
		if (!colliding) { 
			y += sy;
			y_move -= sy;
		}  else {
	
			y = y + sy;
			y_vel = jump_vel;	
			image_speed = 1;
			image_index = 0;
			break;
		}
				
	}
} 


if (y > room_height + sprite_height && respawn_timer <= 0 /*&& global.player_dead == true*/) {
	if(!audio_is_playing(snd_suicide)){
		audio_play_sound(snd_suicide, 80, false);
	}
	gone = true;
	respawn_timer = 2*room_speed;
	if(!instance_exists(obj_star)){
	instance_create_layer(obj_player.x, 1050, "Instances", obj_star);
	}
	global.player_dead = false;
	if (global.player_dead == false){
		obj_player1.sprite_index = spr_player1;
		obj_player2.sprite_index = spr_player2;
}
}


if(respawn_timer > 0){
	respawn_timer --;
	if(respawn_timer = 0){
		gone = false;
		y_vel = jump_vel*2;
		if(!audio_is_playing(snd_revive)){
		audio_play_sound(snd_revive, 80, false);
		
		global.player_dead = false;
	}
	}
}

if (keyboard_check_pressed(ord("R"))) {
	room_restart();	
}

sy2 = sign(y_vel);