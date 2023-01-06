if(collision_line(0, 130, 80, 130, 1570, 0, 1)) alarm[1]= 3;
if(collision_line(200, 138, 260, 138, 1570, 0, 1)) alarm[2]= 3;
if(level == 0 && bgalpha > 0) {
    bgalpha-= 0.2;
    if(bgalpha < 0.11) bgalpha= 0;
    __background_set( e__BG.Alpha, 2, bgalpha );
}
if(level > 0 && bgalpha < 1) {
    bgalpha+= 0.2;
    if(bgalpha > 0.9) bgalpha= 1;
    __background_set( e__BG.Alpha, 2, bgalpha );
}
if(initcheck == 0) {
    if(obj_mainchara.y < 120) alarm[1]= 1;
    else  alarm[2]= 1;
    initcheck= 1;
}

