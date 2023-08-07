 // En el evento Draw del objeto obj_hud
 
 //BARRA DE VIDA
draw_set_color(c_black);
draw_rectangle(10, 10, 210, 30, false); // rectángulo negro de fondo

draw_set_color(c_red);
var life_width = global.life_count * 2; // calcula el ancho de la barra de vida
draw_rectangle(10, 10, 10 + life_width, 30, false); // rectángulo rojo de vida actual

draw_set_color(c_red);
draw_text(215, 10, string(global.life_count) + "%"); // Cuenta de la vida actual


//SCORE

// Obtener las dimensiones del texto
var text_width_jump = string_width("Saltos: " + string(global.jump_count));
var text_width_dead = string_width("Muertes: " + string(global.death_count));
var text_width_time = string_width("Tiempo: " + time_string);
var text_height = 15; // Altura de cada línea de texto


// Calcular las posiciones y dimensiones del rectángulo de marco
var frame_x = 325; // Posición x del primer rectángulo
var frame_y = 5; // Posición y del primer rectángulo - 5
var frame_width = text_width_jump + text_width_dead + text_width_time + 80; // Ancho del rectángulo de marco
var frame_height = text_height + 9 * 2; // Altura del rectángulo de marco + ajustes para centrar contenido

// Dibujar el rectángulo de marco
draw_set_color(c_red);
draw_rectangle(frame_x, frame_y, frame_x + frame_width, frame_y + frame_height, false);

draw_set_color(c_black);
// Dibujar el rectángulo con un borde de 1 píxel
draw_rectangle(330, 10, 330 + text_width_jump + 20, 15 + text_height  + 5, false);
draw_rectangle(440, 10, 460 + text_width_dead + 20, 15 + text_height  + 5, false);
draw_rectangle(590, 10, 590 + text_width_time + 20, 15 + text_height  + 5, false);

// Dibujar el texto dentro del rectángulo
draw_set_color(c_white);
draw_text(340, 10, "Saltos: " + string(global.jump_count));
draw_text(450, 10, "Muertes: " + string(global.death_count));
draw_text(600, 10, "Tiempo: " + time_string);