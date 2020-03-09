
draw_set_font(font0);
var ww = window_get_width();


draw_set_halign(fa_left);
var p0 = instance_find(obj_player,0); 
if (p0 != noone /*&& p0.gone == true*/) { // check that we found something and if so, that they are gone
	draw_text_transformed_colour(20,10,global.redscore,3,3,0,c_red,c_red,c_maroon,c_maroon,1);
}


draw_set_halign(fa_right);
var p1 = instance_find(obj_player,1); // both players are derived from obj_player, so searching for the parent allows us to get refs to either
if (p1 != noone /*&& p1.gone == true*/) { // check that we found something and if so, that they are gone
	draw_text_transformed_colour(ww-10,10, global.greenscore,3,3,0,c_blue,c_teal,c_teal,c_teal,1);
}
