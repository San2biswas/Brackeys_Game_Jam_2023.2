scr_controls();

#region shortcuts

if (key_escape) {
    game_end();
}


if (key_r) {
    game_restart();
}

#endregion shortcuts


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


if (place_meeting(x, y, oJelyfish)) {
	pHDmgTmr = pHDmgTmr + 1;
	if (pHDmgTmr > 60) {
	    pHDmgTmr = 0;
	}
	
}

if (pHDmgTmr == 60) {
    phealth = phealth - 2;
}
