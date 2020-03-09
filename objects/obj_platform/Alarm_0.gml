// I prefer manually-written timers like in the Step event, because it means you necessarily
// are using named variables that communicate what the timer is for, but you can also use Alarms.
// Alarm 0 is our delete timer, so when this Event gets called because the alarm finished, we just delete this
instance_destroy(self);	