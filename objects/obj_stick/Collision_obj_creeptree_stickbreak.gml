if(broken == 0 && global.flag[275] == 0) {
    broken= 1;
    image_index= 1;
    global.flag[47]= 2;
    if(global.flag[275] < 1) global.flag[275]= 1;
    caster_set_panning(snap, -0.8);
    caster_play(snap, 1, 0.9);
    alarm[2]= 80;
}

