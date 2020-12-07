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
selected = clamp(selected, 0, array_length_1d(fail) - 1);

//Array of booleans to check for mouseover of button
mouseOver[0] = point_in_rectangle(mouse_x,mouse_y, failX, failY - string_height(fail[0])/2 - 5,
						  failX + string_width(fail[0]), failY + string_height(fail[0])/2);
mouseOver[1] = point_in_rectangle(mouse_x,mouse_y, failX, failY + spacing - string_height(fail[1])/2,
						  failX + string_width(fail[1]), failY + spacing + string_height(fail[1])/2);

//Enables mouse controls for the fail screen
if(mouseOver[0]){ //restart level
	selected = 0;
	window_set_cursor(cr_handpoint);
}
	
if(mouseOver[1]){ //exit to menu
	selected = 1;
	window_set_cursor(cr_handpoint);
}


//Activates selected menu item when confirm button is pressed
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	
	if(selected == 0){ //restart level
		window_set_cursor(cr_none);
		room_persistent = false;
		room_restart();
	}
	
	if(selected == 1){ //exit to menu
		room_goto(MainMenu);
	}
}