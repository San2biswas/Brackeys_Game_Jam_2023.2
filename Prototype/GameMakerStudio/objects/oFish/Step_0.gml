
#region follow path


fPath = path_add();

mp_potential_path(fPath, oFishFollow.x, oFishFollow.y, 4, 4, false)
path_set_kind(fPath, 2)
path_start(fPath, fishSpd, path_action_continue, true);
image_angle = point_direction(x, y, oFishFollow.x, oFishFollow.y)


#endregion follow path


#region self collision


if (place_meeting(x, y, oFish)) {
	var _fShift = 2;
    x = x + (random_range(-_fShift, _fShift));
    y = y + (random_range(-_fShift, _fShift));
}


#endregion self collision


#region fish eaten


if (place_meeting(x, y, oShark)) {
    instance_destroy(self);
	global.fishCount --;
}


#endregion


