var p1 = instance_find(obj_player, 0);
var p2 = instance_find(obj_player, 1);
if(p1.y > p2.y && p1.y < 768 || p2.y < 768){
	track_y = p2.y;
}else if (p1.y < p2.y && p1.y < 768 || p2.y < 768){
	track_y = p1.y;
}