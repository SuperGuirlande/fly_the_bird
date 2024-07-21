draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fnt_score);
draw_set_color(c_white);

var _xx = display_get_gui_width()/2;

if ( state == GAME_STATES.START ) {
	var _yy = display_get_gui_height()/2;
	var _txt = "FLY THE BIRD\nAppuyez sur [SPACE] pour jouer";
	
	draw_text(_xx, _yy, _txt);
	
} else if ( state == GAME_STATES.PLAY ) {
	var _yy = 64;
	draw_text(_xx, _yy, score);
	
} else {
	var _yy = 64;
	draw_text(_xx, _yy, score);
	
	var _yy = display_get_gui_height()/2;
	var _txt = "GAME OVER\nAppuyez sur [SPACE] pour rejouer";
	
	draw_text(_xx, _yy, _txt);
	
}