con= 0;
if(global.flag[376] > 0) {
    obj_mainchara.x= global.flag[376] - 200;
    obj_mainchara.y= -20;
    obj_mainchara.image_alpha= 0.5;
    obj_mainchara.vspeed= 6;
    con= 1;
    alarm[3]= 4;
    alarm[4]= 25;
    global.phasing= 1;
    global.flag[376]= 0;
}

