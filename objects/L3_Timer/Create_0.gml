//Sets the font for the level
global.t2 = font_add(text_font,18,false,false, 32, 128);
//turns off timer in chesney mode
if(global.isChesney){
		instance_destroy();
}
//changes timer based on difficulty
else if(!global.isChesney && global.difficulty == "Easy"){
	seconds = 30;
	minutes = 3;
}
else if(!global.isChesney && global.difficulty == "Medium"){
	seconds = 0;
	minutes = 3;
}
else if(!global.isChesney && global.difficulty == "Hard"){
	seconds = 30;
	minutes = 2;
}
