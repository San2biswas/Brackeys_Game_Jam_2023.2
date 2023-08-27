if (place_meeting(x, y, oPlayer)) {
    instance_destroy(self);
	global.collectClam ++;
	global.clamCount --;
}
