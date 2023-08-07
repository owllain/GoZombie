text = "Salud restante : " + string(global.life_count) + "\nMuertes : " + string(global.death_count) + "\nSaltos : " + string(global.jump_count) + "\nFragmentos de luz : " + string(global.coins_count);
textOnDisplay = "";
alarm[0] = 3;

function drawText(text) {
	var _x = 295+(295/2);
    var _y = 200;
	draw_sprite(sprTextbox2, 0, _x, _y);
    draw_set_font(global.TEXTBOX_FONT);
    draw_text_ext(_x + 18, _y + 14, text, 35, 770);
}

 
 