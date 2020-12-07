//Set font and text align
draw_set_font(cubes_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

//Draw pause screen
draw_sprite(background_spr_4,-1,failX - 200,failY - 200);

//Loops through pause array and draws each element
for(i = 0; i < array_length_1d(fail); i++){
	//Draw selected element with different color and size from other elements
	if(selected == i){
		draw_set_color(selectedColor);
	}
	
	else{
		draw_set_color(notSelectedColor);
	}
	
	//Draw text
	draw_text_transformed(failX, failY + i*spacing, fail[i], 0.6, 0.6, 0);
}

//Draw cursor
draw_sprite(cursor_spr, -1, cursorX + cursorLevitate, cursorY + selectLerp*spacing);
			
//Draw pause text
draw_set_font(cubes_font);
draw_set_color(failColor);
draw_set_halign(fa_middle);
draw_text_transformed(failX + 225, failY - 100, failText, failSize, failSize, 0);