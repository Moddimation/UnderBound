con= 0;
finaly= 333;
if(global.flag[388] == 1) {
    global.flag[388]= 0;
    finaly= obj_mainchara.y;
    obj_mainchara.y= -20;
    obj_mainchara.image_alpha= 0.5;
    obj_mainchara.vspeed= 6;
    con= 1;
    alarm[3]= 4;
    global.interact= 1;
    global.phasing= 1;
} else  instance_destroy();

