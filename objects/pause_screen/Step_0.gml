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
selected = clamp(selected, 0, array_length_1d(pause) - 1);

//Array of booleans to check for mouseover of button
mouseOver[0] = point_in_rectangle(mouse_x,mouse_y, pauseX, pauseY - string_height(pause[0])/2 - 5,
						  pauseX + string_width(pause[0]), pauseY + string_height(pause[0])/2);
mouseOver[1] = point_in_rectangle(mouse_x,mouse_y, pauseX, pauseY + spacing - string_height(pause[1])/2,
						  pauseX + string_width(pause[1]), pauseY + spacing + string_height(pause[1])/2);
mouseOver[2] = point_in_rectangle(mouse_x,mouse_y, pauseX, pauseY + 2*spacing - string_height(pause[2])/2,
						  pauseX + string_width(pause[2]), pauseY + 2*spacing + string_height(pause[2])/2);
mouseOver[3] = point_in_rectangle(mouse_x,mouse_y, pauseX, pauseY + 3*spacing - string_height(pause[2])/2,
						  pauseX + string_width(pause[3]), pauseY + 3*spacing + string_height(pause[3])/2);

//Enables mouse controls for the pause screen
if(mouseOver[0]){ //resume game
	selected = 0;
	window_set_cursor(cr_handpoint);
}
	
if(mouseOver[1]){ //go to settings
	selected = 1;
	window_set_cursor(cr_handpoint);
}
	
if(mouseOver[2]){ //restart level
	selected = 2;
	window_set_cursor(cr_handpoint);
}

if(mouseOver[3]){ //Go to main menu screen
	selected = 3;
	window_set_cursor(cr_handpoint);
}

//Activates selected menu item when confirm button is pressed
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	
	if(selected == 0){ //Return to game and turn off cursor
		instance_activate_all();
		window_set_cursor(cr_none);
		instance_destroy();
	}
	
	if(selected == 1){ //Go to settings menu and save the room
		global.roomPausedIn = room;
		room_persistent = true;
		room_goto(Settings);
	}
	
	if(selected == 2){ //Restart room
		room_persistent = false;
		room_restart();
	}
	
	if(selected == 3){ //Exit to menu, disable persistency, and stop music
		room_persistent = false;
		global.roomPausedIn = MainMenu;
		room_goto(MainMenu);
		audio_group_stop_all(audiogroup_default);
	}
}