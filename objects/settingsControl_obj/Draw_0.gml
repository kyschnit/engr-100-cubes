//Set font and text align
draw_set_font(cubes_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);

//Loops through menu array and draws each element
for(i = 0; i < array_height_2d(setting); i++){
	//Draw selected element with different color and size from other elements
	for(k = 0; k < array_length_2d(setting, 3); k++){
		if(selectedHor == k && selectedVert == i){ 
			//Prevents cursor from moving outside of the fullscreen options
			if((selectedVert == 4 || selectedVert ==5) && selectedHor == 3){
				selectedHor--;	
			}
			draw_set_color(selectedColor);
		}
		else{
			draw_set_color(notSelectedColor);
		}
		//Prevents the for loop from reaching outside the array(since it is a jagged array)
		if((i == 4 || i == 5) && k == 3){
			break;
		}
		//Draws the first two options seperately because they do not have a right hand column
		else if(i == 0 || i == 1){
			draw_text(settingsX, settingsY + i*vertSpacing, setting[i, 0]);
			break;
		}
		//Draw first column on right
		else if(i > 1 && i < 4 && k == 1){
			draw_text(settingsX + horSpacing, settingsY + i*vertSpacing, setting[i, k]);
		}
		//draw second column on right
		else if(i > 1 && i < 4 && k == 2){
			draw_text(settingsX + horSpacing + 50, settingsY + i*vertSpacing, setting[i, k]);
		}
		//draw third column on right
		else if(i > 1 && i < 4 && k == 3){
			draw_text(settingsX + horSpacing + 70 + string_width(setting[i,k - 1]), settingsY + i*vertSpacing, setting[i, k]);
		}
		//draw chesney and fullscreen "off" settings
		else if(i >= 4 && k == 1){
			if(i == 5 && !global.isChesney && !(selectedVert == 5 && selectedHor == 1)) draw_set_color(c_red);
			if(i == 4 && !isFullscreen && !(selectedVert == 4 && selectedHor == 1)) draw_set_color(c_red);
			draw_text(settingsX + horSpacing + 50, settingsY + i*vertSpacing, setting[i, k]);
		}
		//draw chesney and fullscreen "on" settings
		else if(i >= 4 && k == 2){
			if(i == 5 && global.isChesney && !(selectedVert == 5 && selectedHor == 2)) draw_set_color(c_green);
			if(i == 4 && isFullscreen && !(selectedVert == 4 && selectedHor == 2)) draw_set_color(c_green);
			draw_text(settingsX + horSpacing + 100 + string_width(setting[i,k - 1]), settingsY + i*vertSpacing, setting[i, k]);
		}
		else{
			draw_text(settingsX, settingsY + i*vertSpacing, setting[i, k]);
		}
	}
}

//Draw cursor
draw_sprite(cursor_spr, -1, cursorX + cursorLevitate, cursorY + selectLerp*vertSpacing);
			
//Draw title text
draw_set_color(settingsColor);
draw_text_transformed(settingsX, settingsY - 150, settingsText, settingsSize, settingsSize, 0);

//Draw description box
draw_set_font(Times);
draw_rectangle_color(812,60,1104,351,c_black,c_black,c_black,c_black,c_black);
draw_set_color(c_white);
draw_text(820,80,"Description: ");

//draw descriptions
draw_set_halign(fa_left);
switch(selectedVert){
	case 0:
		draw_text(820,150,"Return to main or\npause menu");
		break;
	case 1:
		draw_text(820,150,"View or change\ncontrols");
		break;
	case 2:
		draw_text(820,200,
		"Raise or lower volume.\nIf using keyboard\ncontrols, press confirm\nkey on number to\nreturn to left column.");
		break;
	case 3:
		draw_text(820,225,
		"Change difficulty.\nFor keyboard controls\npress confirm key on\nword to return to left\ncolumn.\nChanging difficulty\nin-game will not work\nuntil level restart.");
		break;
	case 4:
		draw_text(820,150,"Enable or disable\nfullscreen.");
		break;
	case 5:
		draw_text(820,200,
		"\nChesney mode gives\nyou a jetpack,\ndisables the timer,\n& lets you finish levels\nwithout collecting\ncubes!");
		break;
}

draw_set_font(cubes_font);