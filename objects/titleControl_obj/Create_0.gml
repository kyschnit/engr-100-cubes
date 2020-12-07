//Turns on cursor
window_set_cursor(cr_default);

//Makes the back button in the settings menu go to main menu by default
//Until player pauses in a room
global.roomPausedIn = MainMenu;

//Creates an array of menu elements
menu[0] = "Level Select";
menu[1] = "Credits";
menu[2] = "Settings";
menu[3] = "Exit Game";

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
titleColor = c_black;

//Main menu text and size
titleText = "Cubes";
titleSize = 2.75;

//Lerp(linear interpolation) settings(smooths the cursor movement)
selectLerp = 0;
lerpAmount = 0.2;

//Coordinates to draw the text and cursor
menuX = room_width/2 - 240;
menuY = room_height/2;
cursorX = menuX - 25;
cursorY = menuY - 5;

//Turns CHESNEY MODE!! off and sets difficulty to easy
//by default to prevent error where game stated it is not declared
//if player hasn't opened settings yet
global.isChesney = false;
global.difficulty = "Easy";

//Sets default keys
global.keyUp = 38; //sets up key to up arrow
global.keyDown = 40; //sets down key to down arrow
global.keyLeft = 37; //sets left key to left arrow
global.keyRight = 39 //sets right key to right arrow
global.keyJump = 32; //sets jump key to spacebar
global.keyInteract = 69; //sets interact key to e
global.keyPause = 80; //sets pause key to p

global.key[9] = "Tab";
global.key[8] = "Backspace";
global.key[160] = "Left Shift";
global.key[162] = "Left Control";
global.key[164] = "Left Alt";
global.key[165] = "Right Alt";
global.key[92] = "Right Windows Key";
global.key[163] = "Right Control";
global.key[161] = "Right Shift";

global.key[13] = "Enter";

global.key[16] = "Shift";
global.key[17] = "Control";
global.key[18] = "Alt";
global.key[19] = "Pause";
global.key[20] = "Capslock";

global.key[32] = "Space";
global.key[33] = "Page up";
global.key[34] = "Page down";
global.key[35] = "End";
global.key[36] = "Home";

// key[27] = "Escape" // cant be used because its used to exit this menu

global.key[37] = "Left Arrow";
global.key[38] = "Up Arrow";
global.key[39] = "Right Arrow";
global.key[40] = "Down Arrow";

global.key[45] = "Insert";
global.key[46] = "Delete";

global.key[48] = "0";
global.key[49] = "1";
global.key[50] = "2";
global.key[51] = "3";
global.key[52] = "4";
global.key[53] = "5";
global.key[54] = "6";
global.key[55] = "7";
global.key[56] = "8";
global.key[57] = "9";

global.key[65] = "A";
global.key[66] = "B";
global.key[67] = "C";
global.key[68] = "D";
global.key[69] = "E";
global.key[70] = "F";
global.key[71] = "G";
global.key[72] = "H";
global.key[73] = "I";
global.key[74] = "J";
global.key[75] = "K";
global.key[76] = "L";
global.key[77] = "M";
global.key[78] = "N";
global.key[79] = "O";
global.key[80] = "P";
global.key[81] = "Q";
global.key[82] = "R";
global.key[83] = "S";
global.key[84] = "T";
global.key[85] = "U";
global.key[86] = "V";
global.key[87] = "W";
global.key[88] = "X";
global.key[89] = "Y";
global.key[90] = "Z";
global.key[91] = "Windows Key";

global.key[93] = "Context Menu";

global.key[96] = "Num 0";
global.key[97] = "Num 1";
global.key[98] = "Num 2";
global.key[99] = "Num 3";
global.key[100] = "Num 4";
global.key[101] = "Num 5";
global.key[102] = "Num 6";
global.key[103] = "Num 7";
global.key[104] = "Num 8";
global.key[105] = "Num 9";

global.key[106] = "Num *";
global.key[107] = "Num +";
global.key[109] = "Num -";
global.key[110] = "Num .";
global.key[111] = "Num /";


global.key[112] = "F1";
global.key[113] = "F2";
global.key[114] = "F3";
global.key[115] = "F4";
global.key[116] = "F5";
global.key[117] = "F6";
global.key[118] = "F7";
global.key[119] = "F8";
global.key[120] = "F9";
global.key[121] = "F10";
global.key[122] = "F11";
global.key[123] = "F12";

global.key[144] = "NUMLOCK";

global.key[186] = ";";
global.key[187] = "=";
global.key[188] = ",";
global.key[189] = "-";
global.key[190] = ".";
global.key[191] = "/";
global.key[192] = "'";

global.key[219] = "[";
global.key[221] = "]";
global.key[222] = "\#"; 

global.key[223] = "`"; 