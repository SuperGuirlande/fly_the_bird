//-- Position X = Taille de la piece + sprite
var _xx = room_width + sprite_get_width(spr_pipe_blue);

//-- Amplitude en Y
magnitude = 32 + (score / 2);
//-- Position Y = millieu Y + random amplitude
var _yy = room_height / 2 + random_range(-magnitude, magnitude);

//-- Génération de tuyaux
if ( state != GAME_STATES.START ) {
	instance_create_layer(_xx, _yy, "i_main", obj_pipe);
}
//-- Répétition de l'alarm
pipe_timer = start_timer - score;
alarm[0] = pipe_timer;