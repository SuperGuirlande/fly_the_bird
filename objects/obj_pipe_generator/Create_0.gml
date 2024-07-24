//-- Génération de la seed
randomize();

//-- Création du 1er tuyau
alarm[0] = room_speed;

//-- Amplitude des tuyaux
start_magnitude = 32;
magnitude = start_magnitude;
max_magnitude = 112;


//-- Timer de génération de tuyaux
start_timer = room_speed * 2;
pipe_timer = start_timer;
min_pipe_timer = room_speed;