global.life_count = (global.life_count - 10);

if(global.life_count == 0){
room_goto(badEnding)
}

instance_destroy();