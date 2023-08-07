// Detener toda la música actual antes de cambiar de habitación
audio_stop_all();

// Seleccionar la música correspondiente al nuevo cuarto
if (room == primerNivel) {
    global.sound = music_ancientpath_loop;
} else if (room == segundoNivel) {
    global.sound = music_iceforest_loop;
} else if (room == tercerNivel) {
    global.sound = music_firedungeon_battle_loop;
} else if (room == cuartoNivel) {
    global.sound = DesertSirocco;
} else if (room == mainMenu) {
    global.sound = ambient_moonlessnight_loop;
} else if(room = badEnding){
 global.sound = Darkwods;
} else if(room = goodEnding){
 global.sound = FinalQuest;
} else if(room = presentacion){
 global.sound = heroic_minority;
}

// Reproducir la música seleccionada
audio_play_sound(global.sound, true, true);
global.isPaused = false;

