last_touched_by = noone; // who was the last player to touch this
time_since_touched = -1; // timer for automatically progressing from base state to warning state

touch_time_thresh = 15; // how many seconds from touch time to warning state
delete_time_duration = 15; // how many seconds from warning state to delete

cloudsize = 0;
lvup_timer = -1;
target_time = 2*room_speed;

cloud_num = 0;
//image_speed = 0.5; // freeze on our frame because platforms don't have animations, just states