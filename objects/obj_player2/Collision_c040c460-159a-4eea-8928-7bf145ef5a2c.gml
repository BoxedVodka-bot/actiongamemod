
//var sy = sign(y_vel);
var p1 = instance_find(obj_player, 0);
var p2 = instance_find(obj_player, 1);

if(y < 768 && p2.sy2 > 0 && p1.sy2 < 0 /*&& global.player_dead == false*/){
	if(!audio_is_playing(snd_stomp)){
		audio_play_sound(snd_stomp, 80, false);
	}
	if(!instance_exists(obj_star)){
		instance_create_layer(obj_player2.x, obj_player2.y, "Instances", obj_star);
	}
	y_vel = jump_vel;
	obj_player1.sprite_index = spr_player1stomped;
	obj_player2.sprite_index = spr_player2;
	global.player_dead = true;
	global.stomp2 = true;
}
else if(y < 768 && p2.sy2 > 0 && p1.sy2 > 0 && global.player_dead == false){
	global.stomp2 = true;
}
else if(y < 768 && p2.sy2<0 && p2.sy2 >0 /*&& global.player_dead == false*/){
	y_vel = -jump_vel;
	object_set_sprite(3, obj_player2);
	
}
