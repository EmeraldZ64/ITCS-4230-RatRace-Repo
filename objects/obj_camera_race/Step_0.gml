var w = camera_get_view_width(cam);
var h = camera_get_view_height(cam);

// Center camera on the player
camera_set_view_pos(cam, obj_player_race.x - w * 0.5, obj_player_race.y - h * 0.5);
