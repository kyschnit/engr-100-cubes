//Use the sine function to oscillate cursor x position
cursorLevitate = 2 * dsin(cursorTime);
cursorTime += levitationRate;

//Determines if cursor moves up or down
input = keyboard_check_pressed(global.keyDown) - keyboard_check_pressed(global.keyUp);

//Moves cursor up or down based on input
selected += input;

//Makes cursor default when not selecting an item
window_set_cursor(cr_default);

//Smooths cursor movement
selectLerp = lerp(selectLerp, selected, lerpAmount);

//Prevents cursor from moving too far
selected = clamp(selected, 0, array_length_1d(level) - 1);

//Array of booleans to check for mouseover of button
mouseOver[0] = point_in_rectangle(mouse_x,mouse_y, levelX, levelY - string_height(level[0])/2 - 5,
						  levelX + string_width(level[0]), levelY + string_height(level[0])/2);
mouseOver[1] = point_in_rectangle(mouse_x,mouse_y, levelX, levelY + spacing - string_height(level[1])/2,
						  levelX + string_width(level[1]), levelY + spacing + string_height(level[1])/2);
mouseOver[2] = point_in_rectangle(mouse_x,mouse_y, levelX, levelY + 2*spacing - string_height(level[2])/2,
						  levelX + string_width(level[2]), levelY + 2*spacing + string_height(level[2])/2);
mouseOver[3] = point_in_rectangle(mouse_x,mouse_y, levelX, levelY + 3*spacing - string_height(level[3])/2,
						  levelX + string_width(level[3]), levelY + 3*spacing + string_height(level[3])/2);
mouseOver[4] = point_in_rectangle(mouse_x,mouse_y, levelX, levelY + 4*spacing - string_height(level[4])/2,
						  levelX + string_width(level[4]), levelY + 4*spacing + string_height(level[4])/2);
mouseOver[5] = point_in_rectangle(mouse_x,mouse_y, levelX, levelY + 5*spacing - string_height(level[5])/2,
						  levelX + string_width(level[5]), levelY + 5*spacing + string_height(level[5])/2);

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

if(mouseOver[3]){
	selected = 3;
	window_set_cursor(cr_handpoint);
}

if(mouseOver[4]){
	selected = 4;
	window_set_cursor(cr_handpoint);
}

if(mouseOver[5]){
	selected = 5;
	window_set_cursor(cr_handpoint);
}

//Activates selected menu item when confirm button is pressed
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	
	if(selected == 0){ //Go to tutorial level
		room_goto(Tutorial);
	}
	
	if(selected == 1){ //Go to level 1
		room_goto(cave_clouds);
	}
	
	if(selected == 2){ //Go to level 2
		room_goto(L2_Volcano);
	}
	
	if(selected == 3){ //Go to level 3
		room_goto(L3_Mountain);
	}
	
	if(selected == 4){ //Go to level 4
		room_goto(L4_Underworld);
	}	
	//Stub for adding more levels
	/*if(selected == _){ //Go to level _
		room_goto(____);
	}
	*/
	
	if(selected == 5){
		room_goto(MainMenu);
	}
}