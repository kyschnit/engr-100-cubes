//Turns on cursor
window_set_cursor(cr_default);

//Creates an array of menu elements
credits[0] = "Back to Menu";

//Variables for the oscillation/animation of the cursor
cursorLevitate = 0;
cursorTime = 0;
levitationRate = 5;

//Stores selected menu item
selected = 0;

//Color of selected menu element
selectedColor = c_orange;

//Color of non-selected menu elements;
notSelectedColor = c_white;

//Color of title text
creditsColor = c_black;

//Main menu text and size
creditsText = "Credits";
creditsSize = 1

//Lerp(linear interpolation) settings(smooths the cursor movement)
selectLerp = 0;
lerpAmount = 0.2;

//Coordinates to draw the text and cursor
creditsX = room_width/2;
creditsY = room_height/4;
cursorX = creditsX - 100;
cursorY = creditsY - 3;