//Finds the dimensions of the textbox and spacing in between words
x_buffer = 20; 
text = "Placeholder"; 
boxWidth = sprite_get_width(text_box_Spr) - (2*x_buffer) ; 
stringHeight = string_height(text); 
global.t2 = font_add(text_font,18,false,false, 32, 128);
//t3 = font_add(text_font,18,false,false, 32, 128);