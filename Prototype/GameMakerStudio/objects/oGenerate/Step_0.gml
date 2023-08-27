

#region timer loop


clamTimer = clamTimer + 1;
if (clamTimer > 300) {
    clamTimer = 0;
}


var _sharktlimit = 512;
sharkTimer = sharkTimer + 1;
if (sharkTimer > _sharktlimit) {
    sharkTimer = 0;
}


jfishTimer = jfishTimer + 1;
var _ftlimit = 512;
if (jfishTimer > _ftlimit) {
    jfishTimer = 0;
}


#endregion timer loop


#region clamp generate


cGenPosX = random_range(16, 600);
cGenPosY = random_range(16, 320);

if (clamTimer == 300 && global.clamCount < 3) {
    instance_create_depth(cGenPosX, cGenPosY, -10, oClam);
	global.clamCount ++;
}


#endregion clamp generate


#region fish generate


fGenPosX = random_range(16, 800);
fGenPosY = random_range(-64, 640);

if (clamTimer == 300 && global.fishCount < 100) {
    instance_create_depth(fGenPosX, fGenPosY, 10, oFish);
	global.fishCount ++;
}


#endregion fish generate


#region shark generate


sGenPosX = random_range(-64, -640);
sGenPosY = random_range(16, 320);

if (sharkTimer == _sharktlimit && global.fishCount > 20) {
    instance_create_depth(sGenPosX, sGenPosY, 10, oShark);
	if (global.fishCount > 50) {
	    instance_create_depth(sGenPosX, sGenPosY, 10, oShark);
	}
}


#endregion shark generate


#region jellyfish generate


jGenPosX = random_range(16, 600);
jGenPosY = random_range(400, 800);

if (jfishTimer == _ftlimit) {
    instance_create_depth(jGenPosX, jGenPosY, -10, oJelyfish);
    if (global.fishCount == 20) {
	    instance_create_depth(jGenPosX, jGenPosY, -10, oJelyfish);
	}
}


#endregion clamp generate

