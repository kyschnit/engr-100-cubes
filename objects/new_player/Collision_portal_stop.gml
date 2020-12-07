//Stops the player at the portal when they have less than three objects
if (place_meeting(x+xSpeed,y,portal_stop)&&global.Obj_Collected!=3) {
	xSpeed = 0; 
}