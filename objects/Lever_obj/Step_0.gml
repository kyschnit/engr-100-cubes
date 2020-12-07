//Allows the player to press the interaction key and change the lever state
if (distance_to_object(new_player) < 2) && (keyboard_check_pressed(global.keyInteract)) {
on=!on; 
}
image_index = on; 

