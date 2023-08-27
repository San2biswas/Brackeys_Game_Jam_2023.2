sharkPos = sharkPos + (sharkSpd * image_xscale);
x = x + sharkPos + random(0.02);
y = y + sin(sharkPos*10) * 0.05 * random(10);

if (place_meeting(x, y, oBubbles)) {
	sharkHealth = sharkHealth - 5;
}

if (sharkHealth < 1) {
	image_xscale = -1;
	sharkSpd = 0.05;
}
