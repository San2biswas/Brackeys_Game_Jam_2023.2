x = x + (bubbleDir * bubbleSpd);
y = y + bubbleStartAngle;
image_alpha = image_alpha/1.08;
if (image_alpha < (0.2 + bubbleLife)) {
    instance_destroy(self);
}

if (place_meeting(x, y, oShark) || place_meeting(x, y, oJelyfish)) {
    image_alpha = 0;
}
