//Pauses all instances in the level
instance_deactivate_all(true);

//Turns on cursor
window_set_cursor(cr_default);

//Creates an array of menu elements
win[0] = "Next Level"
win[1] = "Replay Level";
win[2] = "Exit to Menu";

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

//Color of win text
winColor = c_purple;

//win message text and size
winText = "Great Job!\nLevel Complete";
winSize = 0.75;

//Lerp(linear interpolation) settings(smooths the cursor movement)
selectLerp = 0;
lerpAmount = 0.2;

//Coordinates to draw the text and cursor
winX = camera_get_view_x(view_camera[0]) + 200;
winY = camera_get_view_y(view_camera[0]) + 200;
cursorX = winX - 25;
cursorY = camera_get_view_y(view_camera[0]) + 195;
