//Sends the player to level the next level when finished with current level
if (keyboard_check(global.keyInteract) and place_meeting(x,y,new_player) and instance_number(Collectible_obj) == 0 && !global.isChesney)
{
	//instance_destroy(new_player);
	audio_stop_all();
	instance_create_layer(0,0,"Instances_1",levelWin_obj);
}

//Allows the player to progress without collecting objects in Chesney mode
else if(keyboard_check(global.keyInteract) and place_meeting(x,y,new_player) && global.isChesney)
{
	audio_stop_all();
	
	instance_create_layer(0,0,"Instances_1",levelWin_obj);
}