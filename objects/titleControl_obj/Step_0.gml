//Use the sine function to oscillate cursor x position
cursorLevitate = 2 * dsin(cursorTime);
cursorTime += levitationRate;

//Determines if cursor moves up or down
input = keyboard_check_pressed(global.keyDown) - keyboard_check_pressed(global.keyUp);

//Makes cursor default when not selecting an item
window_set_cursor(cr_default);

//Moves cursor up or down based on input
selected += input;

//Smooths cursor movement
selectLerp = lerp(selectLerp, selected, lerpAmount);

//Prevents cursor from moving too far
selected = clamp(selected, 0, array_length_1d(menu) - 1);

//Array of booleans to check for mouseover of button
mouseOver[0] = point_in_rectangle(mouse_x,mouse_y, menuX, menuY - string_height(menu[0])/2 - 5,
						  menuX + string_width(menu[0]), menuY + string_height(menu[0])/2);
mouseOver[1] = point_in_rectangle(mouse_x,mouse_y, menuX, menuY + spacing - string_height(menu[1])/2,
						  menuX + string_width(menu[1]), menuY + spacing + string_height(menu[1])/2);
mouseOver[2] = point_in_rectangle(mouse_x,mouse_y, menuX, menuY + 2*spacing - string_height(menu[2])/2,
						  menuX + string_width(menu[2]), menuY + 2*spacing + string_height(menu[2])/2);
mouseOver[3] = point_in_rectangle(mouse_x,mouse_y, menuX, menuY + 3*spacing - string_height(menu[3])/2,
						  menuX + string_width(menu[3]), menuY + 3*spacing + string_height(menu[3])/2);

//Enables mouse controls for the menu
if(mouseOver[0]){ //Go to load game screen
	selected = 0;
	window_set_cursor(cr_handpoint);
}
	
if(mouseOver[1]){ //Go to new game screen
	selected = 1;
	window_set_cursor(cr_handpoint);
}
	
if(mouseOver[2]){ //Go to settings screen
	selected = 2;
	window_set_cursor(cr_handpoint);
}
	
if(mouseOver[3]){ //exit game
	selected = 3;
	window_set_cursor(cr_handpoint);
}

//Activates selected menu item when confirm button or left click is pressed
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	
	if(selected == 0){ //Go to load game screen
		room_goto(LoadGame);
	}
	
	if(selected == 1){ //Go to new game screen
		room_goto(Credits);
	}
	
	if(selected == 2){ //Go to settings screen
		room_goto(Settings);
	}
	
	if(selected == 3){ //ends the game
		game_end();
	}
}