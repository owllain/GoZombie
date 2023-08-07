var elapsed_time = current_time - global.start_time;
var minutes = floor(elapsed_time / 60000);
var seconds = floor((elapsed_time % 60000) / 1000);

// Formatear los valores en una cadena legible
var minutes_string = string(minutes);
var seconds_string = string(seconds);
if (string_length(minutes_string) == 1) {
    minutes_string = "0" + minutes_string;
}
if (string_length(seconds_string) == 1) {
    seconds_string = "0" + seconds_string;
}
time_string = minutes_string + ":" + seconds_string;