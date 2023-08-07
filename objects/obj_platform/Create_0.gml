 // Declarar las variables para el movimiento del enemigo
move_speed = 1.5;
dir = 1; // 1 = derecha, -1 = izquierda

// Establecer la posición inicial del enemigo
x_start = x;
y_start = y;
x_end = x_start + 350;


function movement_horizontal()
{
	   if (x < x_end && dir == 1) {
        x += move_speed;
        //image_xscale = 1; // No es necesario cambiar la orientación porque ya está mirando hacia la derecha
    }
    else if (x > x_start && dir == -1) {
        x -= move_speed;
        //image_xscale = -1; // Invertimos la orientación del sprite para que mire hacia la izquierda
    }
    else {
        // Cambiar la dirección del enemigo cuando llega a los extremos del rango
        dir *= -1;
        if (dir == 1) {
            //image_xscale = 1;
        }
        else {
            //image_xscale = -1;
        }
    }
    
    // Mantener la posición y del enemigo
    y = y_start;
}