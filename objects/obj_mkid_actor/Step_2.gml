if(closemove == 1) {
    x+= obj_mainchara.x - xfer;
    y+= obj_mainchara.y - yfer;
    if(room == 106) {
        if(y < 100) y= 100;
        if(x < 1500 && y > 150) y-= 3;
    }
    if(room == 107) {
        if(y > 915) y-= 3;
        if(y < 850) {
            if(x > 160) x-= 3;
        } else  {
            if(x > 166 && y < 857) y= 857;
        }
        if(x < 120) x+= 3;
        if(y > obj_echoflower.y && global.flag[91] < 3) {
            global.flag[91]= 3;
            speed= 0;
            sprite_index= rtsprite;
            image_speed= 0;
            follow= 8;
            alarm[3]= 25;
        }
    }
    facing= global.facing;
    image_speed= obj_mainchara.image_speed;
    if(facing == 0) sprite_index= dsprite;
    if(facing == 1) sprite_index= rsprite;
    if(facing == 2) sprite_index= usprite;
    if(facing == 3) sprite_index= lsprite;
    closemove= 0;
}

