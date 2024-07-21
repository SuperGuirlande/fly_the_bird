//** INPUTS **//
input_jump = keyboard_check_pressed(vk_space);

// DEBUG //
input_lvl_50 = keyboard_check_pressed(vk_numpad5);
if  (input_lvl_50) {
	score = 50;
}

//** GO TO PLAY **//
if ( state == GAME_STATES.START ) {
	if ( input_jump ) {
		state = GAME_STATES.PLAY;
	}
} 

//** PHYSIQUE DE L'OISEAU **//
if ( state == GAME_STATES.PLAY ) or ( state == GAME_STATES.GAME_OVER ) {
	//****** GRAVITY
	// Calcul de la gravité en fonction du score
	fall_gravity = start_fall_gravity + ( score * 3 / 1000 );
	// Incrémente la gravité
	fall_speed += fall_gravity;
	// Limite la vitesse de chute
	if ( fall_speed > max_fall_speed ) {
		fall_speed = max_fall_speed;
	}
	// Fait le mouvement
	y += fall_speed;
} 

//** ETAT DE JEU **//
if ( state == GAME_STATES.PLAY ) {
	//****** FAIRE UN SAUT
	if ( input_jump ) {
		//-- Calcul la vitesse de saut
		jump_speed = start_jump_speed - ( score * 1.5 / 100 );
		//-- Donne la vitesse de saut
		fall_speed = jump_speed;
	}

	//****** GAME OVER
	if ( place_meeting(x, y, obj_collision) ) or ( place_meeting(x, y, obj_pipe) ) {
		state = GAME_STATES.GAME_OVER;
	}
}

//** REDEMARRER LE JEU **//
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





