//Set font and text align
draw_set_font(settings);
draw_set_valign(fa_middle);
draw_set_halign(fa_middle);

//Loops through menu array and draws each element
for(i = 0; i < array_length_1d(credits); i++){
	//Draw selected element with different color and size from other elements
	if(selected == i){
		draw_set_color(selectedColor);
	}
	
	else{
		draw_set_color(notSelectedColor);
	}
	
	//Draw text
	draw_text_transformed(creditsX, creditsY - 50, credits[i], 0.4, 0.4, 0);
}

//Draw cursor
draw_sprite_ext(cursor_spr, -1, cursorX + cursorLevitate, cursorY + selectLerp - 50, 0.5, 0.5, 0, c_white, 1);
			
//Draw text
draw_set_color(creditsColor);
draw_text_transformed(creditsX, creditsY - 100, creditsText, creditsSize, creditsSize, 0);
draw_set_color(c_white);
draw_text_transformed(creditsX, creditsY, "Gloria Geo, VP of Product Development", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 50, "Daniel Rizo-Lopez, Developer/Art/Level Design", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 100, "Rohan Setia, Developer/Audio/Level Design", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 150, "Kyle Schnitzer, Developer/Animation/UI Design", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 250, "Special thanks to:", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 325, "Dr. David Chesney", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 375, "Professor Kenneth Alfano", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 425, "Joey Berman", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 475, "Calvin Zheng", 0.8, 0.8, 0);
draw_text_transformed(creditsX, creditsY + 515, ":)", 0.5, 0.5, 0);

		