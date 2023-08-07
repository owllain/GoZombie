if (mouse_check_button_pressed(mb_left)) {
   // Obtener las coordenadas del mouse
   var pos_x = window_mouse_get_x();
   var pos_y = window_mouse_get_y();

   // Verificar si el click está dentro del sprite del botón
   if (pos_x >= x && pos_x <= x + sprite_width && pos_y >= y && pos_y <= y + sprite_height) {
      // Reemplazar "nombre_del_room" por el nombre del room que se quiere abrir
      game_end();
   }
}
