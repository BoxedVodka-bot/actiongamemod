/// @description Insert description here
// You can write your code in this editor
if(global.collideddamage2 == true && global.checkdamagecollision2 == false){	
	global.greenscore--;
	global.checkdamagecollision2 = true;
}

if(global.collideddamage2 == false){
	global.checkdamagecollision2 = false;
}

if(global.stomp2 == true && global.checkstomp2 == false){
	global.greenscore ++;
	global.checkstomp2 = true;
}

if(global.stomp2 == false){
	global.checkstomp2 = false;
}
