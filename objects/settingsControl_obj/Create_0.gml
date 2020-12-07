//Turns on cursor
window_set_cursor(cr_default);

//Assigns settings variables
volume = audio_get_master_gain(0);
isFullscreen = false;
diffArr[0] = "Easy";
diffArr[1] = "Medium";
diffArr[2] = "Hard";
diffIndex = 0;
global.difficulty = diffArr[0];
global.isChesney = false;

//Creates an array of elements for the left side of the settings menu
//Left column
setting[0, 0] = "Back";
setting[1, 0] = "Controls";
setting[2, 0] = "Volume:";
setting[3, 0] = "Difficulty:";
setting[4, 0] = "Fullscreen:";
setting[5, 0] = "Chesney Mode:";
//Right column
//Volume controls
setting[2, 1] = "<";
setting[2, 2] = string(volume * 10);
setting[2, 3] = ">";
//Difficulty controls
setting[3, 1] = "<";
setting[3, 2] = diffArr[0];
setting[3, 3] = ">";
//Fullscreen settings
setting[4, 1] = "Off";
setting[4, 2] = "On";
//CHESNEY MODE!! settings
setting[5, 1] = "Off";
setting[5, 2] = "On";

//Variables for the oscillation/animation of the cursor
cursorLevitate = 0;
cursorTime = 0;
levitationRate = 5;

//Stores selected menu item
selectedVert = 0;

//Stores selected right side menu item
selectedHor = -1;

//Spacing between menu elements
vertSpacing = 80;
horSpacing = 700;

//Color of selected menu element
selectedColor = c_orange;

//Color of non-selected menu elements;
notSelectedColor = c_white;

//Color of settings text
settingsColor = c_aqua;

//Settings text and size
settingsText = "Settings";
settingsSize = 1.5;

//Lerp(linear interpolation) settings(smooths the cursor movement)
selectLerp = 0;
lerpAmount = 0.2;

//Coordinates to draw the text and cursor
settingsX = room_width/12;
settingsY = room_height/3;
cursorX = settingsX - 25;
cursorY = settingsY - 5;