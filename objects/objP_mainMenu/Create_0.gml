// Función para crear una instancia de la silueta de un botón y dibujarla en la pantalla
function createButtonSilhouette(pos_x, pos_y, obj_silhouette) {
    var instance = instance_create_layer(pos_x, pos_y, "global", obj_silhouette);
	instance.pos_x = pos_x;
    instance.pos_y = pos_y;
    return instance;
}



// Crear instancia y dibujar la silueta del botón "Titulo"
global.inst_siluetaTitulo = createButtonSilhouette(352, 64, obj_siluetaTitulo);

// Crear instancia y dibujar la silueta del botón "Start"
global.inst_siluetaBoton_start = createButtonSilhouette(544, 448, obj_siluetaBotonStart);

// Crear instancia y dibujar la silueta del botón "Options"
global.inst_siluetaBoton_guide = createButtonSilhouette(160, 448, obj_siluetaBotonGuide);

// Crear instancia y dibujar la silueta del botón "Close"
global.inst_siluetaBoton_close = createButtonSilhouette(928, 448, obj_siluetaBotonClose);