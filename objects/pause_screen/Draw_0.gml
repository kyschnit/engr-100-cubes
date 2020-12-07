//Set font and text align
draw_set_font(cubes_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

//Draw pause screen
draw_sprite(background_spr_2,-1,pauseX - 200,pauseY - 200);

//Loops through pause array and draws each element
for(i = 0; i < array_length_1d(pause); i++){
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
	draw_text(pauseX, pauseY + i*spacing, pause[i]);
}

//Draw cursor
draw_sprite(cursor_spr, -1, cursorX + cursorLevitate, cursorY + selectLerp*spacing);
			
//Draw pause text
draw_set_font(cubes_font);
draw_set_color(pauseColor);
draw_text_transformed(pauseX - 70, pauseY - 100, pauseText, pauseSize, pauseSize, 0);