global.death_count++;
global.life_count = (global.life_count - 10);
// Reproducir el sonido de colisión



if(global.life_count != 0){
reset_coins();
room_restart();
}
if(global.life_count == 0){
room_goto(badEnding)
}

 

