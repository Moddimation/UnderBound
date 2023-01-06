if(follow == 1) {
    moving= 0;
    if(obj_mainchara.x < x - 34) {
        x-= 3;
        if(speedup == 1) x-= 3;
        sprite_index= lsprite;
        image_speed= 0.25;
        moving= 1;
        look= 0;
    }
    if(obj_mainchara.x > x + 34) {
        x+= 3;
        if(speedup == 1) x+= 3;
        sprite_index= rsprite;
        image_speed= 0.25;
        moving= 1;
        look= 0;
    }
    if(moving == 0) {
        speedup= 0;
        image_index= 0;
        image_speed= 0;
        look++;
        if(look > 60) sprite_index= usprite;
    }
}
if(x > 450 && con == 0 && global.flag[91] < 6) {
    hspeed= 6;
    global.flag[91]= 6;
    follow= 2;
    con= 1;
    sprite_index= rsprite;
    image_index= 0;
    image_speed= 0.25;
    alarm[3]= 60;
}

