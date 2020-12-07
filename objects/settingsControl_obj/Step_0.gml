//Use the sine function to oscillate cursor x position
cursorLevitate = 2 * dsin(cursorTime);
cursorTime += levitationRate;

//Determines if cursor moves up or down
inputVert = keyboard_check_pressed(global.keyDown) - keyboard_check_pressed(global.keyUp);

//Determines if cursor moves left or right
inputHor = keyboard_check_pressed(global.keyRight) - keyboard_check_pressed(global.keyLeft);

//Makes cursor default when not selecting an item
window_set_cursor(cr_default);

//Moves cursor up or down based on input if it is on the left side of the menu
if(selectedHor == 0){
	selectedVert += inputVert;
}

//Moves cursor left or right if an option has been selected
if(selectedVert != 0 && selectedVert != 1 && selectedHor > 0){
	if(selectedHor != 1 || inputHor > -1){
		selectedHor += inputHor;
	}
}

//Smooths cursor movement
selectLerp = lerp(selectLerp, selectedVert, lerpAmount);

//Prevents cursor from moving too far
selectedVert = clamp(selectedVert, 0, array_height_2d(setting) - 1);
selectedHor = clamp(selectedHor, 0, array_length_2d(setting, 3) - 1);

//Array of booleans to check for mouseover of button
for(j = 0; j <= 15; j++){
	if(j <= 5){
		mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX, settingsY + j*vertSpacing - string_height(setting[j, 0])/2 - 5,
						  settingsX + string_width(setting[j, 0]), settingsY + j*vertSpacing + string_height(setting[j, 0])/2);
		//Enables mouse controls for the left column
		if(mouseOver[j]){ 
			selectedVert = j;
			selectedHor = 0;
			window_set_cursor(cr_handpoint);
		}
	}
	if(j > 5 && j <= 8){
		if(j == 6){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing, settingsY + 2*vertSpacing - string_height(setting[2, 1])/2,
						   settingsX + horSpacing + string_width(setting[2, 1]), settingsY + 2*vertSpacing + string_height(setting[2, 1])/2);
		}
		if(j == 7){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 50, settingsY + 2*vertSpacing - string_height(setting[2, 2])/2,
						   settingsX + horSpacing + 50 + string_width(setting[2, 2]), settingsY + 2*vertSpacing + string_height(setting[2, 2])/2);
		}
		if(j == 8){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 70 + string_width(setting[2,2]),
						   settingsY + 2*vertSpacing - string_height(setting[2, 3])/2,
						   settingsX + horSpacing + 70 + string_width(setting[2, 3]) + string_width(setting[2,2]),
						   settingsY + 2*vertSpacing + string_height(setting[2, 3])/2);
		}
		//Enables mouse controls for volume
		if(mouseOver[j]){ 
			selectedVert = 2;
			selectedHor = j - 5;
			window_set_cursor(cr_handpoint);
		}
	}
	if(j > 8 && j <= 11){
		if(j == 9){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing, settingsY + 3*vertSpacing - string_height(setting[3, 1])/2,
						   settingsX + horSpacing + string_width(setting[3, 1]), settingsY + 3*vertSpacing + string_height(setting[3, 1])/2);
		}
		if(j == 10){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 50, settingsY + 3*vertSpacing - string_height(setting[3, 2])/2,
						   settingsX + horSpacing + 50 + string_width(setting[3, 2]), settingsY + 3*vertSpacing + string_height(setting[3, 2])/2);
		}
		if(j == 11){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 70 + string_width(setting[3,2]),
						   settingsY + 3*vertSpacing - string_height(setting[3, 3])/2,
						   settingsX + horSpacing + 70 + string_width(setting[3, 3]) + string_width(setting[3,2]),
						   settingsY + 3*vertSpacing + string_height(setting[3, 3])/2);
		}
		//Enables mouse controls for volume
		if(mouseOver[j]){ 
			selectedVert = 3;
			selectedHor = j - 8;
			window_set_cursor(cr_handpoint);
		}
	}
	if(j > 11 && j <= 13){
		if(j == 12){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 50,
						   settingsY + 4*vertSpacing - string_height(setting[4, 1])/2,
						   settingsX + horSpacing + 50 + string_width(setting[4, 1]),
						   settingsY + 4*vertSpacing + string_height(setting[4, 2])/2);
		}
		if(j == 13){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 100 + string_width(setting[4, 1]),
						   settingsY + 4*vertSpacing - string_height(setting[4, 2])/2,
						   settingsX + horSpacing + 100 + string_width(setting[4, 1]) + string_width(setting[4, 2]),
						   settingsY + 4*vertSpacing + string_height(setting[4, 2])/2);
		}
		//Enables mouse controls for volume
		if(mouseOver[j]){ 
			selectedVert = 4;
			selectedHor = j - 11;
			window_set_cursor(cr_handpoint);
		}
	}
	if(j > 13 && j <= 15){
		if(j == 14){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 50,
						   settingsY + 5*vertSpacing - string_height(setting[5, 1])/2,
						   settingsX + horSpacing + 50 + string_width(setting[5, 1]),
						   settingsY + 5*vertSpacing + string_height(setting[5, 2])/2);
		}
		if(j == 15){
			mouseOver[j] = point_in_rectangle(mouse_x,mouse_y, settingsX + horSpacing + 100 + string_width(setting[5, 1]),
						   settingsY + 5*vertSpacing - string_height(setting[5, 2])/2,
						   settingsX + horSpacing + 100 + string_width(setting[5, 1]) + string_width(setting[5, 2]),
						   settingsY + 5*vertSpacing + string_height(setting[5, 2])/2);
		}
		//Enables mouse controls for volume
		if(mouseOver[j]){ 
			selectedVert = 5;
			selectedHor = j - 13;
			window_set_cursor(cr_handpoint);
		}
	}
}

//Activates selected menu item when confirm button is pressed
//I used a switch/case structure to prevent having a ton of nested If statements
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	switch (selectedVert){
	    case 0: //returns to pause menu or main menu depending where menu was accessed from
	        room_goto(global.roomPausedIn);
			global.roomPausedIn = MainMenu;
	        break;
		case 1: //goes to controls menu
	        room_goto(Controls);
	        break;
		case 2: //moves cursor to volume settings
			switch(selectedHor){
				case 0: //moves cursor to right column
					selectedHor++;
					break;
				case 1: //decreases volume
					if(volume > 0){
						volume -= 0.1;
						setting[2, 2] = string(round(volume * 10));
						audio_master_gain(volume);
					}
					break;
				case 2: //returns to left column
					selectedHor = 0;
					break;
				case 3: //increases volume
					if(volume < 1){
						volume += 0.1;
						setting[2, 2] = string(round(volume * 10));
						audio_master_gain(volume);
					}
					break;
			}
			break;
		case 3: //moves cursor to difficulty settings
			switch(selectedHor){
				case 0: //moves cursor to right column
					selectedHor++;
					break;
				case 1: //decreases difficulty
					if(diffIndex > 0){
						diffIndex--;
						global.difficulty = diffArr[diffIndex];
						setting[3, 2] = global.difficulty;
					}
					break;
				case 2: //returns cursor to left column
					selectedHor = 0;
					break;
				case 3: //increases difficulty
					if(diffIndex < 2){
						diffIndex++;
						global.difficulty = diffArr[diffIndex];
						setting[3, 2] = global.difficulty;
					}
					break;
			}
			break;
		case 4: //moves cursor to fullscreen settings
			switch(selectedHor){
				case 0: //moves cursor to right column
					selectedHor++;
					break;
				case 1: //turns off fullscreen and returns cursor to left column
					if(isFullscreen){
						isFullscreen = false;
						window_set_fullscreen(false);
					}
					selectedHor = 0;
					break;
				case 2: //turns on fullscreen and returns cursor to left column
					if(!isFullscreen){
						isFullscreen = true;
						window_set_fullscreen(true);
					}
					selectedHor = 0;
					break;
			}
			break;
		case 5: //moves cursor to CHESNEY MODE!! settings
			switch(selectedHor){
				case 0: //moves cursor to right column
					selectedHor++;
					break;
				case 1: //turns off CHESNEY MODE!! and returns cursor to left column
					if(global.isChesney){
						global.isChesney = false;
					}
					selectedHor = 0;
					break;
				case 2: //turns on CHESNEY MODE!! and returns cursor to left column
					if(!global.isChesney){
						global.isChesney = true;
					}
					selectedHor = 0;
					break;
			}
			break;
	}
}