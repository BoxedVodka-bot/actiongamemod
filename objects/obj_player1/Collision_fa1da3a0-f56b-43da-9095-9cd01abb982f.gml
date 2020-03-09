
//var sy = sign(y_vel);
var p1 = instance_find(obj_player, 0);
var p2 = instance_find(obj_player, 1);

if(place_meeting(x, y, obj_player2)){
	if(y < 768 && p1.sy2>0 && p2.sy2 < 0 /*&& global.player_dead == false*/){
		if(!instance_exists(obj_star)){
			instance_create_layer(obj_player1.x, obj_player1.y, "Instances", obj_star);
		}
	if(!audio_is_playing(snd_stomp)){
		audio_play_sound(snd_stomp, 80, false);
	}
	y_vel = jump_vel;
	global.stomp1 = true;
	obj_player1.sprite_index = spr_player1;
	obj_player2.sprite_index = spr_player2stomped;
	global.player_dead = true;
	
}else if(y < 768 && p1.sy2 >0 && p2.sy2 > 0 && global.player_dead == false){
	global.stomp1 = false;
}
else if(y < 768 && p1.sy2<0 &&  p2.sy2 < 0 /*&& global.player_dead == false*/){
	y_vel = -jump_vel;
	object_set_sprite(3, obj_player1);
}
}
