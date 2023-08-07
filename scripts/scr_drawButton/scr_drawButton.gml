 

function scr_drawButton(text){

text_width = string_width(text);
text_x = x + (sprite_width/2) - (text_width/2);
text_y = y + sprite_height + 5; // ajustar la distancia vertical aquí
draw_set_font(textoHistoria);
draw_sprite(sprite_index, image_index, x, y);
draw_set_color(c_white);
draw_text(text_x, text_y, text);

}

 