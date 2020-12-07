//Causes the timer to count down
if(seconds==0){
	minutes-=1;
	seconds = 60;
}

//turns timer off in chesney mode
if(global.isChesney){
		instance_destroy();
}

seconds-=1/60;

//shows the fail screen if the player runs out of time
if(minutes<0){
	instance_create_layer(0,0,"Instances_1",levelFailed_obj);
	minutes = 5;
}