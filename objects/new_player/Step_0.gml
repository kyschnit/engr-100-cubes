//Sets player controls
var xDirection = keyboard_check(global.keyRight)-keyboard_check(global.keyLeft);
var jump = keyboard_check(global.keyJump);
var onTheGround = place_meeting(x,y+1,wall) or place_meeting(x,y+1,wall_1);
image_speed = 0;

//if( xDirection !=0) image_xscale = xDirection;

//Sets player speed
xSpeed = xDirection*spd;
ySpeed++;

//player movement and animation in chesney mode
if(global.isChesney){
	//changes to sprite with jetpack
	sprite_index = chesney;	
	//Cycles through "walking right" frames
	if (onTheGround && keyboard_check(global.keyRight) == true){
		image_speed = 0.3;
		audio_stop_sound(jetpack);
		if(image_index < 6){
			image_index = 6;
		} 
		if(image_index >= 10){
			image_index = 6;
		}
	}
	//Cycles through "walking left" frames
	if (onTheGround && keyboard_check(global.keyLeft) == true){
		image_speed = -0.3;
		audio_stop_sound(jetpack);
		if(image_index > 4){
			image_index = 4
		}
		if(image_index <= 1){
			image_speed = -0.3
		}
	}
	//all combinations of keypresses to activate jetpack
	if(jump && onTheGround){
		ySpeed=-10;	
		audio_play_sound(jetpack, 1, false);
		image_index = 11;
	}
	else if(jump && !onTheGround && keyboard_check(global.keyLeft) == false && keyboard_check(global.keyRight) == false){
		ySpeed=-10;	
		image_index = 11;
	}
	else if (jump && !onTheGround && keyboard_check(global.keyLeft) == true){
		ySpeed=-10;	
		image_index = 12;
	}
	else if (jump && !onTheGround && keyboard_check(global.keyRight) == true){
		ySpeed=-10;	
		image_index = 10;
	}
	
	//Returns player to default animation frame when keys are released
	if (keyboard_check_released(global.keyRight) || keyboard_check_released(global.keyLeft)){
		audio_stop_sound(jetpack);
		image_index = 5;
	}

	//Returns player to default animation frame if both keys are pressed
	if (keyboard_check_pressed(global.keyRight) && keyboard_check_pressed(global.keyLeft)){
		audio_stop_sound(jetpack);
		image_index = 5;
	}
	
}

//Controls that impact sprite animation
//Cycles through "walking right" frames
else if(!global.isChesney){
	if (keyboard_check(global.keyRight) == true){
		image_speed = 0.3;
		if(image_index < 6){
			image_index = 6;
		} 
		if(image_index >= 10){
			image_index = 6;
		}
	}
	//Cycles through "walking left" frames
	if (keyboard_check(global.keyLeft) == true){
		image_speed = -0.3;
		if(image_index > 4){
			image_index = 4
		}
		if(image_index <= 1){
			image_speed = -0.3
		}
	}


	//Returns player to default animation frame when keys are released
	if (keyboard_check_released(global.keyRight) || keyboard_check_released(global.keyLeft)){
	image_index = 5;
	}

	//Returns player to default animation frame if both keys are pressed
	if (keyboard_check(global.keyRight) && keyboard_check(global.keyLeft)){
		image_index = 5;
	}

//player physics with the ground
	if(!global.isChesney && onTheGround) {
		if(jump){
			ySpeed=-15;
		}
	}
}

//stops player from moving through walls
if(place_meeting(x+xSpeed,y,wall) || place_meeting(x+xSpeed,y,wall_1)){
	xSpeed=0;
}
x+=xSpeed;

if(place_meeting(x,y+ySpeed,wall) || place_meeting(x,y+ySpeed,wall_1)){
	ySpeed=0;
}

y+=ySpeed
//Ladder phyics 
//if (place_meeting(x,y,Ladder_obj)) {
//	ladder = true; 
//	vspeed = 0; 
//		} 
//	if (keyboard_check_direct(vk_up)){
//		ySpeed = -5;
//		vspeed = 0;
//		} 
//		if (keyboard_check_direct(vk_down)){ 
//		ySpeed = 5;
//		vspeed = 0; 
//		}
//	if (keyboard_check_pressed(vk_space)){
//	} else {
//		ladder = false; 
//		} 
//	if (keyboard_check_pressed(vk_space)){
//	ladder = false; }