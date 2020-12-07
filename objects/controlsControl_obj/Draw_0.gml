//Set font and text align
draw_set_font(cubes_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);


//Loops through level array and draws each modifiable element
for(i = 0; i < array_length_1d(modify); i++){
	//Draws instructional text
	if(changeInput == 0){
		draw_set_color(c_white);
		draw_set_font(Times);
		draw_text(room_width/2, controlY, "Press enter/left click\non the key you wish to change");
	}
	else if(changeInput == 1){
		draw_set_color(c_white);
		draw_set_font(Times);
		draw_text(room_width/2, controlY, "Press a key to bind it\nor press escape to unselect it");
	}
	
	//set font
	draw_set_font(cubes_font);
	
	//Draw selected element with different color and size from other elements
	if(selected == i){
		draw_set_color(selectedColor);
	}
	else{
		draw_set_color(notSelectedColor);
	}
	
	//Draw text
	//Draw back button in left column
	if(i == 0){
		draw_text(controlX, controlY, modify[i]);
	}
	//draw right column
	else{
		draw_text(controlX * 3.5, controlY + i*spacing + 25, modify[i]);
	}
	//draw left column
	if(i > 0){
		draw_set_color(c_gray);
		draw_text(controlX, controlY + i*spacing + 25, control[i]);
	}
}

//Draw cursor
if(selected = 0){
	draw_sprite(cursor_spr, -1, cursorX + cursorLevitate, cursorY + selectLerp*spacing);
}
else{
	draw_sprite(cursor_spr, -1, cursorX + cursorLevitate + controlX * 2.5, cursorY + selectLerp*spacing + 25);
}
			
//Draw title text
draw_set_font(cubes_font);
draw_set_color(controlColor);
draw_text_transformed(controlX * 2, controlY / 2, controlText, controlSize, controlSize, 0);