//Focuses the camera on the player
var xcam = clamp(new_player.x-wCam/2,0,room_width-wCam);
var ycam = clamp(new_player.y-hCam/2,0,room_height-hCam);

var xpos = camera_get_view_x(view_camera[0]);
var ypos = camera_get_view_y(view_camera[0]);

var newx = lerp(xpos, xcam, 0.1);
var newy = lerp(ypos, ycam, 0.1);

camera_set_view_pos(view_camera[0],newx,newy);

//layer_x(layer_get_id("Background"),newx*0.65);
//layer_y(layer_get_id("Background"),newy*0.65);
