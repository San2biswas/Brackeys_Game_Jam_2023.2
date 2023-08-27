jfishDashTimer = jfishDashTimer + 1;

//var _limit = 90;
if (jfishDashTimer > jfishDashTimerLimit) {
    y = y - jfishDash;
	jfishDashTimer = 0;
}

if (place_meeting(x, y, oBubbles)) {
    jfishHealth = jfishHealth - 2;
}

if (jfishHealth < 1) {
    jfishDashTimerLimit = 15;
	image_speed = 6;
}
