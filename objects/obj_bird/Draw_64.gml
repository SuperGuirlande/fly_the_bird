//-- Setup du dessin
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
draw_set_color(c_white);

//-- Millieu en x
var _xx = display_get_gui_width()/2;

//-- Dessin du menu start
if ( state == GAME_STATES.START ) {
	var _yy = display_get_gui_height()/2;
	var _txt = "FLY THE BIRD\nAppuyez sur [SPACE] pour jouer";
	
	draw_text(_xx, _yy, _txt);
	
	_yy += string_height(_txt);
	_txt = "Meilleur Score :" + string(best_score);
	draw_text(_xx, _yy, _txt);
	
//-- Dessin du score - Etat PLAY
} else if ( state == GAME_STATES.PLAY ) {
	var _yy = 64;
	draw_text(_xx, _yy, score);

//-- Dessin du score + Menu Game Over
} else {
	//-- Position haute pour le score
	var _yy = 64;
	draw_text(_xx, _yy, score);
	
	//-- Milieu de l'écran pour le game over
	var _yy = display_get_gui_height()/2;
	var _txt = "GAME OVER\nAppuyez sur [SPACE] pour rejouer";
	draw_text(_xx, _yy, _txt);
	
	//-- Dessin du best score
	_yy += string_height(_txt);
	_txt = "Meilleur Score :" + string(best_score);
	draw_text(_xx, _yy, _txt);
}