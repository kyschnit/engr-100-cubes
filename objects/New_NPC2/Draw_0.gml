//Draws the text boxes if the player is nearby and deletes them once the player is too afr away
draw_self();

if (distance_to_object(new_player) < 2){
	if (own_text_box == noone){
	own_text_box = instance_create_layer(x,y,"text_layer",text_box_obj); 
	own_text_box.text = npc_text; 

	}
} else {
	if (own_text_box != noone){ 
	instance_destroy(own_text_box); 
	own_text_box = noone; 
} 
} 