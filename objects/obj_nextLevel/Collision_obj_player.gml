if (room == primerNivel) {
   if(global.coins_count >= 3){
	 
   room_goto(segundoNivel);
   }
} else if (room == segundoNivel) {
	if(global.coins_count >= 6){
		
	 room_goto(tercerNivel);
	 }
   
} else if (room == tercerNivel) {
   if(global.coins_count >= 12){
	 
	 room_goto(cuartoNivel);
	 }
   
} else if (room == cuartoNivel) {
   if(global.coins_count >= 18){
	   
	 room_goto(goodEnding);
	 }
}