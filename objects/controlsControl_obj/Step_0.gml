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
selected = clamp(selected, 0, array_length_1d(control) - 1);

//Array of booleans to check for mouseover of button
mouseOver[0] = point_in_rectangle(mouse_x,mouse_y, controlX, controlY - string_height(modify[0])/2 - 5,
						  controlX + string_width(modify[0]), controlY + string_height(modify[0])/2);
mouseOver[1] = point_in_rectangle(mouse_x,mouse_y, controlX * 3.5, controlY + spacing - string_height(modify[1])/2,
						  controlX * 3.5 + string_width(modify[1]), controlY + spacing + string_height(modify[1])/2);
mouseOver[2] = point_in_rectangle(mouse_x,mouse_y, controlX * 3.5, controlY + 2*spacing - string_height(modify[2])/2,
						  controlX * 3.5 + string_width(modify[2]), controlY + 2*spacing + string_height(modify[2])/2);
mouseOver[3] = point_in_rectangle(mouse_x,mouse_y, controlX * 3.5, controlY + 3*spacing - string_height(modify[3])/2,
						  controlX * 3.5 + string_width(modify[3]), controlY + 3*spacing + string_height(modify[3])/2);
mouseOver[4] = point_in_rectangle(mouse_x,mouse_y, controlX * 3.5, controlY + 4*spacing - string_height(modify[4])/2,
						  controlX * 3.5 + string_width(modify[4]), controlY + 4*spacing + string_height(modify[4])/2);
mouseOver[5] = point_in_rectangle(mouse_x,mouse_y, controlX * 3.5, controlY + 5*spacing - string_height(modify[5])/2,
						  controlX * 3.5 + string_width(modify[5]), controlY + 5*spacing + string_height(modify[5])/2);
mouseOver[6] = point_in_rectangle(mouse_x,mouse_y, controlX * 3.5, controlY + 6*spacing - string_height(modify[6])/2,
						  controlX * 3.5 + string_width(modify[6]), controlY + 6*spacing + string_height(modify[6])/2);
mouseOver[7] = point_in_rectangle(mouse_x,mouse_y, controlX * 3.5, controlY + 7*spacing - string_height(modify[7])/2,
						  controlX * 3.5 + string_width(modify[7]), controlY + 7*spacing + string_height(modify[7])/2);

//Enables mouse controls for the menu
if(mouseOver[0]){ //Go to settings screen
	window_set_cursor(cr_handpoint);
	selected = 0;
}
	
if(mouseOver[1]){ //change up key
	window_set_cursor(cr_handpoint);
	selected = 1;
}
	
if(mouseOver[2]){ //change down key
	window_set_cursor(cr_handpoint);
	selected = 2;
}

if(mouseOver[3]){ //change left key
	window_set_cursor(cr_handpoint);
	selected = 3;
}

if(mouseOver[4]){ //change right key
	window_set_cursor(cr_handpoint);
	selected = 4;
}

if(mouseOver[5]){ //change jump key
	window_set_cursor(cr_handpoint);
	selected = 5;
}

if(mouseOver[6]){ //change interact key
	window_set_cursor(cr_handpoint);
	selected = 6;
}

if(mouseOver[7]){ //change pause key
	window_set_cursor(cr_handpoint);
	selected = 7;
}

//Activates selected menu item when confirm button is pressed
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	if(selected == 0){ //Go back to settings
		room_goto(Settings);
	}
	//Indicates that a key has been selected
	else{
		changeInput = 1;
	}
}
//Changes the displayed text and changes the key
if(keyboard_check_pressed(vk_anykey)){
	if(keyboard_check_pressed(vk_escape) || selected = 0){
		changeInput = 0;
	}
	else{
		if(changeInput = 1){
			if(global.key[keyboard_key] == global.key[global.keyDown]){
				modify[selected] = global.key[keyboard_key];
				changeTo = keyboard_key;
				selected++;
			}
			else if(global.key[keyboard_key] == global.key[global.keyDown]){
				modify[selected] = global.key[keyboard_key];
				changeTo = keyboard_key;
				selected--;
			}
			else if(global.key[keyboard_key] == "Enter"){
				changeInput = 0;
				changeTo = keyboard_key;
			}
			else{
				modify[selected] = global.key[keyboard_key];
				changeTo = keyboard_key;
			}
			switch(selected){
				case 0: 
					changeInput = 0; 
					break;
				case 1:
					global.keyUp = changeTo;
					break;
				case 2:
					global.keyDown = changeTo;
					break;
				case 3:
					global.keyLeft = changeTo;
					break;
				case 4:
					global.keyRight = changeTo;
					break;
				case 5:
					global.keyJump = changeTo;
					break;
				case 6:
					global.keyInteract = changeTo;
					break;
				case 7:
					global.keyPause = changeTo;
					break;
			}
			changeInput = 0;
		}
	}
}

if(changeInput < 0) changeInput = 0;