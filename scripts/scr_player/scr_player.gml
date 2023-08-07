 

function scr_player_horizontal(_right, _left, _x_speed, _dir, sprIdle, sprWalk)
{
	var _move_x = (_right - _left) * _x_speed; // Calcula la velocidad del movimiento horizontal
	
	if (_move_x != 0)
	{
		if (_move_x > 0) {
			_dir = 1;
		} else {
			_dir = -1;
		}
		
		sprite_index = sprWalk;
	} else {
		sprite_index = sprIdle;
	}
	
	image_xscale = _dir;

	// Ajuste de la colision con objetos solidos
	if (!place_free(x + _move_x, y))
	{
		while (place_free(x + sign(_move_x), y))
		{
			x += sign(_move_x);
		}
		_move_x = 0;
	}

	return [_move_x, _dir];
}

function scr_gravity()
{
	if (place_free(x, y + 1))
	{
		return 1;
	} else {
		return 0;
	}
}

function scr_jump(_jump_power, _y_speed)
{
	if (!place_free(x, y + 1))
	{
		return _jump_power;
	} else {
		return _y_speed;
	}
	
	
}