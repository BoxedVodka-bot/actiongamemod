// Move the camera in the end step so that everything else has moved first
// Could also do this in Draw Begin if there's other stuff happening in End Step

//var numplayers = instance_number(obj_player);
var new_y = 0;
new_y = track_y - (camera_get_view_height(view_camera[0]) / 2);
cam_y = lerp(camera_get_view_y(view_camera[0]), new_y, 0.6);

x = 0;
if (start == false){
	camera_set_view_pos(view_camera[0], x, cam_y+300);
	if(obj_player1.y < room_height){
		show_debug_message(obj_player1.y);
		start = true;
	}
}else if(start == true && new_y < 1000){
	camera_set_view_pos(view_camera[0], x, cam_y);
}else{
	camera_set_view_pos(view_camera[0], x, 1000);
}

//// Simple camera that tries to keep the first alive player in view and never goes outside the bounds of the room
//for (i = 0; i < numplayers; i++){
//	var p = instance_find(obj_player, i); // grab a reference to the next player
//	// If the player hasn't fallen off the bottom, have the camera follow them
//	if (!p.gone) {
//		new_y = p.y - (camera_get_view_height(view_camera[0]) / 2);
//		break;
//	}
//}

//// Move 60% of the way to this average position
//cam_y = lerp(camera_get_view_y(view_camera[0]), new_y, 0.6);

//// Clamp position to room boundaries: don't want to move outside the room!
//cam_y = max(cam_y, 0);
//cam_y = min(cam_y, room_height - camera_get_view_height(view_camera[0]));


//// Camera doesn't move in x -- force it to 0 every frame just in case
//x = 0;


//camera_set_view_pos(view_camera[0], x, cam_y);
