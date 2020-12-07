//Pauses all instances in the level
instance_deactivate_all(true);

//Turns on cursor
window_set_cursor(cr_default);

//Creates an array of menu elements
pause[0] = "Resume";
pause[1] = "Settings";
pause[2] = "Restart Level";
pause[3] = "Exit to Menu";

//Variables for the oscillation/animation of the cursor
cursorLevitate = 0;
cursorTime = 0;
levitationRate = 5;

//Stores selected menu item
selected = 0;

//Spacing between menu elements
spacing = 64;

//Color of selected menu element
selectedColor = c_orange;

//Color of non-selected menu elements;
notSelectedColor = c_white;

//Color of Pause text
pauseColor = c_aqua;

//Pause menu text and size
pauseText = "Game Paused";
pauseSize = 1.25;

//Lerp(linear interpolation) settings(smooths the cursor movement)
selectLerp = 0;
lerpAmount = 0.2;

//Coordinates to draw the text and cursor
pauseX = camera_get_view_x(view_camera[0]) + 200;
pauseY = camera_get_view_y(view_camera[0]) + 200;
cursorX = pauseX - 25;
cursorY = camera_get_view_y(view_camera[0]) + 195;
