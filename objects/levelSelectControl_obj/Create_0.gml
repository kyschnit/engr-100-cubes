//Turns on cursor
window_set_cursor(cr_default);

//Creates an array of level elements
level[0] = "0: Tutorial";
level[1] = "1: Grassland";
level[2] = "2: Volcano";
level[3] = "3: Mountain";
level[4] = "4: Underworld";
level[5] = "Back to Menu";

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

//Color of title text
levelColor = c_aqua;

//Level select text and size
levelText = "Level Select";
levelSize = 2;

//Lerp(linear interpolation) settings(smooths the cursor movement)
selectLerp = 0;
lerpAmount = 0.2;

//Coordinates to draw the text and cursor
levelX = room_width/2 - 240;
levelY = room_height/2;
cursorX = levelX - 25;
cursorY = levelY - 5;