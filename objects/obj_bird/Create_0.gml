//Game states
enum GAME_STATES { START, PLAY, GAME_OVER }
globalvar state;
state = GAME_STATES.START;


// Fall gravity
fall_speed = 0;
max_fall_speed = 6;

start_fall_gravity = 0.3;
fall_gravity = start_fall_gravity;

// Jump
start_jump_speed = -5;
jump_speed = start_jump_speed;

//Score
score = 0;

//Nom du fichier de sauvegarde
//Localisation du fichier : Local app data
file_name = "best_score.ini";

//Récupération du meilleur score ( 0 par défaut )
ini_open(file_name);
best_score = ini_read_real("Best", "Score", 0);
ini_close();