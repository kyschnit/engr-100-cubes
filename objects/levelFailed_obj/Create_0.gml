//Pauses all instances in the level
instance_deactivate_all(true);

//Turns on cursor
window_set_cursor(cr_default);

//Creates an array of menu elements;
fail[0] = "Retry Level";
fail[1] = "Exit to Menu";

//Variables for the oscillation/animation of the cursor
cursorLevitate = 0;
cursorTime = 0;
levitationRate = 5;

//Stores selected menu item
selected = 0;

//Spacing between menu elements
spacing = 64;

//Color of selected menu element
selectedColor = c_blue;

//Color of non-selected menu elements;
notSelectedColor = c_black;

//Color of fail text
failColor = c_dkgrey;

//Fail message text and size
failText = "You ran out of time.\nTry again!\nPractice makes perfect.";
failSize = 0.75;

//Buttons to navigate the menu
upButton = vk_up;
downButton = vk_down;
confirmButton = vk_enter;

//Lerp(linear interpolation) settings(smooths the cursor movement)
selectLerp = 0;
lerpAmount = 0.2;

//Coordinates to draw the text and cursor
failX = camera_get_view_x(view_camera[0]) + 200;
failY = camera_get_view_y(view_camera[0]) + 200;
cursorX = failX - 25;
cursorY = camera_get_view_y(view_camera[0]) + 195;
