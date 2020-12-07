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
selected = clamp(selected, 0, array_length_1d(win) - 1);

//Array of booleans to check for mouseover of button
mouseOver[0] = point_in_rectangle(mouse_x,mouse_y, winX, winY - string_height(win[0])/2 - 5,
						  winX + string_width(win[0]), winY + string_height(win[0])/2);
mouseOver[1] = point_in_rectangle(mouse_x,mouse_y, winX, winY + spacing - string_height(win[1])/2,
						  winX + string_width(win[1]), winY + spacing + string_height(win[1])/2);
mouseOver[2] = point_in_rectangle(mouse_x,mouse_y, winX, winY + 2*spacing - string_height(win[2])/2,
						  winX + string_width(win[2]), winY + 2*spacing + string_height(win[2])/2);

//Enables mouse controls for the win screen
if(mouseOver[0]){ //next level
	selected = 0;
	window_set_cursor(cr_handpoint);
}
	
if(mouseOver[1]){ //replay level
	selected = 1;
	window_set_cursor(cr_handpoint);
}

if(mouseOver[2]){ //exit to menu
	selected = 2;
	window_set_cursor(cr_handpoint);
}


//Activates selected menu item when confirm button is pressed
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	
	if(selected == 0){ //next level
		if(room == Tutorial) room_goto(cave_clouds);
		else if(room == cave_clouds) room_goto(L2_Volcano);
		else if(room == L2_Volcano) room_goto(L3_Mountain); 
		else if(room == L3_Mountain) room_goto(L4_Underworld);
		else{
			global.roomPausedIn = MainMenu;
			room_goto(MainMenu);
		}
	}
	
	if(selected == 1){ //restart level
		window_set_cursor(cr_none);
		room_persistent = false;
		room_restart();
	}
	
	if(selected == 2){ //exit to menu
		room_goto(MainMenu);
		global.roomPausedIn = MainMenu;
	}
}