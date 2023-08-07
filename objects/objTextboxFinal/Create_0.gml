text = "¡En hora buena, haz llegado al final! Esta vez, tú poder es suficiente para recuperar el reino de Luminaria.";
textOnDisplay = "";
alarm[0] = 3;

function drawText(text) {
	var _x = 295;
    var _y = 555;
	draw_sprite(sprTextbox, 0, _x, _y);
    draw_set_font(global.TEXTBOX_FONT);
    draw_text_ext(_x + 18, _y + 14, text, 35, 770);
}

 
 