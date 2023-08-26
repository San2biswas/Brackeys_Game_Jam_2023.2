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


#region jellyfish interaction


if (place_meeting(x, y, oJelyfish)) {
	image_blend = c_red;
	pJDmgTmr = pJDmgTmr + 1;
	if (pJDmgTmr > 60) {
	    pJDmgTmr = 0;
	}
	
}
else
{
	image_blend = c_white;
}

if (pJDmgTmr == 2) {
    phealth = phealth - 2;
}


#endregion jellyfish interaction


#region shark interaction


if (place_meeting(x, y, oShark)) {
	image_blend = c_red;
	pSDmgTmr = pSDmgTmr + 1;
	if (pSDmgTmr > 60) {
	    pSDmgTmr = 0;
	}
	
}
else
{
	image_blend = c_white;
}

if (pSDmgTmr == 2) {
    phealth = phealth - 20;
}


#endregion shark interaction


#region game finish


if (phealth < 1) {
    game_restart();
}


#endregion game finish

