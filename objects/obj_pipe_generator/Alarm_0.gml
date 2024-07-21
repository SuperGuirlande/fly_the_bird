var _magnitude = 32;
var _xx = room_width + sprite_get_width(spr_pipe_blue);
var _yy = room_height / 2 + random_range(-_magnitude, _magnitude);

if ( state != GAME_STATES.START ) {
	instance_create_layer(_xx, _yy, "i_main", obj_pipe);
}
alarm[0] = room_speed * 2;