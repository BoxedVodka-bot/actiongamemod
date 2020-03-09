
if(global.collideddamage == true && global.checkdamagecollision == false){	
	global.redscore--;
	global.checkdamagecollision = true;
}
if(global.collideddamage == false){
	global.checkdamagecollision = false;
}

if(global.stomp1 == true && global.checkstomp1 == false){
	global.redscore ++;
	obj_player1.sprite_index = spr_player1;
	obj_player2.sprite_index = spr_player2stomped;
	global.player_dead = true;
	global.checkstomp1 = true;
}

if(global.stomp1 == false){
	global.checkstomp1 = false;
}