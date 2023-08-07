global.life_count = (global.life_count - 20);

if(global.life_count == 0){
room_goto(badEnding)
}

instance_destroy();