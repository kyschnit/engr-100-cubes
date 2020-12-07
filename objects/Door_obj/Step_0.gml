//Used to check the status of the lever and change status if
//player presses interaction key
with(Lever_obj){
	 if (lever_id == other.door_id){
		 other.open = on; 
		}}

//Changes the door to be open or closed depending on the lever state
if (open == true) {
	image_index = open;
	mask_index = open_door;
	image_index = 1 ; 
} else {
	image_index = open;
	mask_index = closed_door;
	image_index = 0; 
	
} 