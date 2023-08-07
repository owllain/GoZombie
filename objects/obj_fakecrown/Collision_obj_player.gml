if (room == tercerNivel) {
   if(global.coins_count >= 6){
	global.coins_count = (global.coins_count - 3);
   room_goto(segundoNivel);
   }
} 