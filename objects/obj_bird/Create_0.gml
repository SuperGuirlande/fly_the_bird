//Game states
enum GAME_STATES { START, PLAY, GAME_OVER }
globalvar state;
state = GAME_STATES.START;


// Fall gravity
fall_speed = 0;
fall_gravity = 0.3;
max_fall_speed = 6;

// Jump
jump_speed = -5;


//Score
score = 0;