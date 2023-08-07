if(room == guia){
draw_set_font(menuGuia);
draw_set_color(c_white);
var text = "Instrucciones:\n\n1. Sobrevive a los zombis. Si te tocan, volveras a comenzar.\n\n2. Recoge los fragmentos de luz para reclamar la corona perdida.\n\n2. Obten las coronas para avanzar hacia el final.";
draw_text(130, 90, text);}
if(room == creditos){
draw_set_font(menuGuia);
draw_set_color(c_white);
var text = "\nCharacther assets - @gameart2d \nEnemy assets - @0x72 \nSonidos - @JDSherbert \nSonidos - @TheToadz \nBackgrounds - @Trixie";
draw_text(130, 90, text);}
