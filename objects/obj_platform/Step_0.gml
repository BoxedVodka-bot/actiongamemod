// if our touch timer is active, then advance it and check if it's time to go to warning state (i.e. start delete timer)
if (time_since_touched >= 0) {
	time_since_touched++;
	
	if (time_since_touched >= touch_time_thresh) {
		time_since_touched = -1; // stop the touch timer
		alarm[0] = delete_time_duration; // start the delete timer, which we do as an alarm instead (notes on this in the Alarm 0 Event)
		image_index = 0; // update visuals to warning state
	}
}

if (lvup_timer >= target_time){
	lvup_timer = -1;
	alarm [1] = 1;
}

if (cloudsize < 3){
	lvup_timer++;
}