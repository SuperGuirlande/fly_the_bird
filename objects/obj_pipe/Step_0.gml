//-- Incrémentation du score
if ( obj_bird.x > x ) and ( !score_gived ) and ( state == GAME_STATES.PLAY ) {
	score_gived = true;
	score ++;
	
}

//-- Vérification position pour destruction
var _limit = -sprite_get_width(spr_pipe_blue);
if ( x <= _limit ) {
	instance_destroy();
}