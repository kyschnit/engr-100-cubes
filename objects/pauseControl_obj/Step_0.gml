//Pauses game if pause button is pressed or window is minimized
if(keyboard_check(global.keyPause) || os_is_paused()){
	global.roomPausedIn = room;
	instance_create_layer(0,0,"Instances_1",pause_screen);
}