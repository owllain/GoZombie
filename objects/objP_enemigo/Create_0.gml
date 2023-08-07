 // Declarar las variables para el movimiento del enemigo
move_speed = scr_movementSpeed();
dir = 1; // 1 = derecha, -1 = izquierda

// Establecer la posición inicial del enemigo
x_start = x;
y_start = y;
x_end = scr_enemy_xrange(sprite_index); //establece la posición final del enemigo
orientacion = scr_direccion(sprite_index);


function reset_coins(){
if (room == primerNivel) {
  global.coins_count = 0;
} else if (room == segundoNivel) {
	 global.coins_count = 3;
} else if (room == tercerNivel) {
  global.coins_count = 6;
} else if (room == cuartoNivel) {
  global.coins_count = 12;
} 

}