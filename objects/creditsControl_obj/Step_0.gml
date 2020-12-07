//Use the sine function to oscillate cursor x position
cursorLevitate = 2 * dsin(cursorTime);
cursorTime += levitationRate;

//Makes cursor hand point
window_set_cursor(cr_handpoint);

//Prevents cursor from moving
selected = clamp(selected, 0, array_length_1d(credits) - 1);

//Activates selected menu item when confirm button or left click is pressed
if(keyboard_check_released(vk_enter) || mouse_check_button_released(mb_left)){
	
	if(selected == 0){ //Go to main menu
		room_goto(MainMenu);
	}
}