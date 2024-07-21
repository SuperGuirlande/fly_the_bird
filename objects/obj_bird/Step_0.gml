//** INPUTS **//
input_jump = keyboard_check_pressed(vk_space);

if ( state == GAME_STATES.START ) {
	if ( input_jump ) {
		state = GAME_STATES.PLAY;
	}
} 

if ( state == GAME_STATES.PLAY ) or ( state == GAME_STATES.GAME_OVER ) {
	//****** GRAVITY
	// Incrémente la gravité
	fall_speed += fall_gravity;
	// Limite la vitesse de chute
	if ( fall_speed > max_fall_speed ) {
		fall_speed = max_fall_speed;
	}
	// Fait le mouvement
	y += fall_speed;
} 

if ( state == GAME_STATES.PLAY ) {
	//****** FAIRE UN SAUT
	if ( input_jump ) {
		fall_speed = jump_speed;
	}

	//****** GAME OVER
	if ( place_meeting(x, y, obj_collision) ) or ( place_meeting(x, y, obj_pipe) ) {
		state = GAME_STATES.GAME_OVER;
	}
}

if ( state == GAME_STATES.GAME_OVER ) {
	if ( input_jump ) {
		var _pos = 96;
		x = _pos;
		y = _pos;
		
		fall_speed = jump_speed;
		
		if ( instance_exists(obj_pipe) ) {
			instance_destroy(obj_pipe);
		}
		
		score = 0;

		state = GAME_STATES.PLAY;
	}
}





