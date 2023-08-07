function scr_enemy_horizontal()
{
	   if (x < x_end && dir == 1) {
        x += move_speed;
        image_xscale = 1; // No es necesario cambiar la orientación porque ya está mirando hacia la derecha
    }
    else if (x > x_start && dir == -1) {
        x -= move_speed;
        image_xscale = -1; // Invertimos la orientación del sprite para que mire hacia la izquierda
    }
    else {
        // Cambiar la dirección del enemigo cuando llega a los extremos del rango
        dir *= -1;
        if (dir == 1) {
            image_xscale = 1;
        }
        else {
            image_xscale = -1;
        }
    }
    
    // Mantener la posición y del enemigo
    y = y_start;
}

function scr_enemy_xrange(sprite_index){
	var x_end;
	if (sprite_index == spr_zombieBoy) {
    x_end = x_start + 250;
	}
	else if (sprite_index == spr_zombieGirl) {
    x_end = x_start + 190;
	}
	if (sprite_index == spr_zombieBoy && room == tercerNivel) {
    x_end = x_start + 190;
	}
	if (sprite_index == spr_plantMan) {
    x_end = x_start - 316;
	}
	if (sprite_index == spr_tinyOrc) {
    x_end = x_start + 316;
	}
	if (sprite_index == spr_BigOgre) {
    x_end = x_start + 65;
	}
	if (sprite_index == spr_BadDoctor) {
    x_end = x_start + 175;
	}
	if (sprite_index == spr_miniRedDemon) {
    x_end = x_start - 180;
	}
	if (sprite_index == spr_redDemon) {
    x_end = x_start + 180;
	}
	if (sprite_index == spr_Punkman) {
    x_end = x_start + 145;
	}
	
	return x_end;
}

function scr_enemy_horizontal_izq(){
if (x > x_end && dir == 1) {
        x -= move_speed;
        image_xscale = -1; // Invertimos la orientación del sprite para que mire hacia la izquierda
    }
    else if (x < x_start && dir == -1) {
        x += move_speed;
        image_xscale = 1; // No es necesario cambiar la orientación porque ya está mirando hacia la derecha
    }
    else {
        // Cambiar la dirección del enemigo cuando llega a los extremos del rango
        dir *= -1;
        if (dir == 1) {
            image_xscale = 1;
        }
        else {
            image_xscale = -1;
        }
    }
    
    // Mantener la posición y del enemigo
    y = y_start;
}

function scr_direccion(sprite_index){
	var direccion;
	if (sprite_index == spr_zombieBoy) {
     direccion = "Derecha";
	}
	else if (sprite_index == spr_zombieGirl) {
     direccion = "Derecha";
	}
	if (sprite_index == spr_zombieBoy && room == tercerNivel) {
    direccion = "Derecha";
	}
	if (sprite_index == spr_plantMan) {
    direccion = "Izquierda";
	}
	if (sprite_index == spr_tinyOrc) {
    direccion = "Derecha";
	}
	if (sprite_index == spr_BigOgre) {
    direccion = "Derecha";
	}
	if (sprite_index == spr_BadDoctor) {
    direccion = "Derecha";
	}
	if (sprite_index == spr_miniRedDemon) {
    direccion = "Izquierda";
	}
	if (sprite_index == spr_redDemon) {
    direccion = "Derecha";
	}
	if (sprite_index == spr_Punkman) {
    direccion = "Derecha";
	}
	
	return direccion;
}
	
function scr_movementSpeed(){
	var move = 1;
	if(sprite_index == spr_tinyOrc){
	move = 2;
	}
	if(sprite_index == spr_BadDoctor){
	move = 2;
	}
	if(sprite_index == spr_BigOgre){
	move = 0.5;
	}
	if (sprite_index == spr_miniRedDemon) {
    move = 2.5;
	}
	return move;
}