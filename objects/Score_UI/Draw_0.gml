//Draws the text for amount of objects left
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom)
draw_set_font(global.t2);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 20, camera_get_view_y(view_camera[0])+440, "Objects Collected: "+string(global.Obj_Collected)+"/"+string(num_obj),1,1,0);
/*with(new_player){
var temp vc = view_camera[0];
var temp cx = camera_get_view_border_x(vc);
var temp cy = camera_get_view_border_y(vc); 
draw_set_font(Times);
draw_set_color(c_black);
draw_text(cx+32 ,cy+32 , string("Objects Collected: ") + string(global.Obj_Collected));
} 
*/