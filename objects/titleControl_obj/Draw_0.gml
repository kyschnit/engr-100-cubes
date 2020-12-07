//Set font and text align
draw_set_font(cubes_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);


//Loops through menu array and draws each element
for(i = 0; i < array_length_1d(menu); i++){
	//Draw selected element with different color and size from other elements
	if(selected == i){
		draw_set_color(selectedColor);
		draw_set_font(bigCubes_font);
	}
	
	else{
		draw_set_color(notSelectedColor);
		draw_set_font(cubes_font);
	}
	
	//Draw text
	draw_text(menuX, menuY + i*spacing, menu[i]);
}

//Draw cursor
draw_sprite(cursor_spr, -1, cursorX + cursorLevitate, cursorY + selectLerp*spacing);
			
//Draw title text
draw_set_font(cubes_font);
draw_set_color(titleColor);
draw_text_transformed(menuX - 20, menuY - 150, titleText, titleSize, titleSize, 0);

		