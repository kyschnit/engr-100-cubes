//Sets properties of and draws tutorial text
draw_set_halign(fa_right);
draw_set_font(global.t2);
draw_text_transformed(325, 275, string("WELCOME!"),2,2,0);
draw_text_transformed(500, 405, string("ONCE YOU CLEAR THIS TUTORIAL, THE FUN REALLY STARTS"),1,1,0);
//draw_text_transformed(400, 350, string("MOVE LEFT AND RIGHT WITH THE ARROW KEYS"),1,1,0);
//draw_text_transformed(400, 400, string("PRESS SPACE TO JUMP"),1,1,0);
//draw_text_transformed(800, 275, string("COLLECT ALL THE 3-D OBJECTS TO COMPLETE THE LEVEL"),1,1,0);
//draw_text_transformed(1200, 350, string("I GUARANTEE IT WON'T BE EASY"),1,1,0);
draw_text_transformed(1300, 400, string("CAN YOU ESCAPE?"),1,1,0);
draw_text_transformed(1350, 600, string("PRESS " + global.key[global.keyInteract] +  " TO BEGIN YOUR JOURNEY"),1,1,0);
//draw_text_transformed(1200, 570, string("INTERACT WITH E (AT SOME POINT)"),0.75,0.75,0);
draw_text_transformed(450, 600, string("PRESS " + global.key[global.keyPause] +  " TO PAUSE AND CHANGE SETTINGS"),1,1,0);
draw_set_halign(fa_center);

