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