/// @description Insert description here
// You can write your code in this editor
// Código de movimiento horizontal, gravedad y brinco del robot

// Verifica si las teclas han sido presionadas
var _right = keyboard_check(vk_right); // Detecto si la tecla derecha fue presionada
var _left = keyboard_check(vk_left); // Detecto si la tecla izquierda fue presionada
var _jump = keyboard_check_pressed(vk_up); // Detecto si la tecla arriba fue presionada

// Movimiento horizontal, la funcion devuelve la velocidad a aplicar en X y la dirección (1 derecha, -1 izquierda)
var _horizontalReturn = scr_player_horizontal(_right, _left, x_speed, dir, spr_chicaEspera, spr_derChicaCamina);

// Aplica el movimiento horizontal
x += _horizontalReturn[0];
dir = _horizontalReturn[1];

// Gravedad
y_speed += scr_gravity();

// Salto
// Si esta colisionando con algun solido y la tecla up fue presionada
if (_jump){
	y_speed = scr_jump(jump_power, y_speed)
	global.jump_count++;
}

// Ajuste de la colision con objetos solidos
if (!place_free(x, y + y_speed))
{
	while (place_free(x, y + sign(y_speed)))
	{
		y += sign(y_speed);
	}
	y_speed = 0;
}

y += y_speed; // Movimiento vertical