//Drawing and setting up the text boxes so the npc can easily access and use them
draw_sprite(text_box_Spr,0,x,y);
draw_set_font(global.t2);
draw_set_halign(fa_center);
//draw_set_color(c_black);
draw_text_ext(x+(boxWidth/2)+27,y+12,text,stringHeight,boxWidth);