function spr_controlMusic(){

	if (global.isPaused) {
    audio_resume_sound(global.sound);
    global.isPaused = false;
    sprite_index = spr_pausa;
	} else {
    audio_pause_sound(global.sound);
    global.isPaused = true;
    sprite_index = spr_reanudar;
	}

}