// Declarar las variables para el movimiento de la plataforma
move_speed = 1.5;
dir = 1; // 1 = abajo, -1 = arriba

// Establecer la posición inicial de la plataforma
x_start = x;
y_start = y;
y_end = y_start + 150;

function movement_vertical()
{
    if (y < y_end && dir == 1) {
        y += move_speed;
    }
    else if (y > y_start && dir == -1) {
        y -= move_speed;
    }
    else {
        // Cambiar la dirección de la plataforma cuando llega a los extremos del rango
        dir *= -1;
    }
    
    // Mantener la posición x de la plataforma
    x = x_start;
}
