//-- Position X = Taille de la piece + sprite
var _xx = room_width + sprite_get_width(spr_pipe_blue);

//-- Amplitude en Y
magnitude = start_magnitude + (score / 2);
magnitude = clamp(magnitude, start_magnitude, max_magnitude)

//-- Position Y = millieu Y + random amplitude
var _yy = room_height / 2 + random_range(-magnitude/2, magnitude/2);

//-- Génération de tuyaux
if ( state != GAME_STATES.START ) {
	instance_create_layer(_xx, _yy, "i_main", obj_pipe);
}
//-- Répétition de l'alarm
pipe_timer = start_timer - score;
//Limite minimum
if ( pipe_timer < min_pipe_timer ) {
	pipe_timer = min_pipe_timer;
}

alarm[0] = pipe_timer;