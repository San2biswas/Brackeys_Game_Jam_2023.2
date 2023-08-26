
#region follow path


fPath = path_add();

mp_potential_path(fPath, oFishFollow.x, oFishFollow.y, 4, 4, false)
path_set_kind(fPath, 2)
path_start(fPath, fishSpd, path_action_continue, true);
image_angle = point_direction(x, y, oFishFollow.x, oFishFollow.y)


#endregion follow path


#region self collision


if (place_meeting(x, y, oFish)) {
    x = x + (random_range(-100, 100));
    y = y + (random_range(-50, 50));
}


#endregion self collision

