text = "Una vez existio un reino llamado Luminaria, donde vivian Aurose y su familia. \nEra un lugar hermoso y lleno de vida, gobernado por el Rey Yulius y la Reina Dahlia, padres de Aurose.\nPero un dia, el malvado brujo Jerem lanzo una maldicion sobre el reino, convocando a las criaturas de la noche \npara que sembraran el caos y la destruccion en Luminaria.  \nAurose y su familia lucharon contra las criaturas, pero fueron capturados en el caos que siguio. \nAurose lograria escapar, observando como los monstruos de Jerem destruian todo lo que amaba. \Ahora es tiempo de comenzar su aventura para encontrar a su familia y liberar Luminaria de la maldicion de Jerem. \nSin embargo, el camino no seria facil. Aurose tendria que recorrer todo el Reino Perdido, un lugar oscuro y peligroso lleno de trampas y criaturas temibles, para salvar a su familia y devolver la paz al reino.";
textOnDisplay = "";
alarm[0] = 3;

function drawText(text) {
	var _x = 118;
    var _y = 15;
    draw_set_font(textoHistoria);
    draw_text_ext(_x + 18, _y + 30, text, 40, 850);
	
}