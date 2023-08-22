// key assigned
key_a		 = keyboard_check(ord("A"));
key_d		 = keyboard_check(ord("D"));
key_w		 = keyboard_check(ord("W"));
key_s		 = keyboard_check(ord("S"));
key_space	 = keyboard_check_pressed(vk_space);


#region movement


// gravity
y = y + grv;

// dash
if (key_space) {
    //y = y - (grv * 5);
	dash = 10;
}

dash = dash-2;
if dash < dashMin dash = 0;


// movement
if (key_a) {
    hdir = -1;
	x = x + (hdir * (spd + dash));
}

if (key_d) {
    hdir = 1;
	x = x + (hdir * (spd + dash));
}

if (key_w) {
    vdir = -1;
	y = y + (vdir * (spd + dash) * grv);	// upward movement slower
}

if (key_s) {
    vdir = 1;
	y = y + (vdir * (spd + dash));
}


#endregion movement
