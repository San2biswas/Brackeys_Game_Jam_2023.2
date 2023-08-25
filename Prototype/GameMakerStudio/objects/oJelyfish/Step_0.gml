jfishDashTimer = jfishDashTimer + 1;

var _limit = 90;
if (jfishDashTimer > _limit) {
    y = y - jfishDash;
	jfishDashTimer = 0;
}

