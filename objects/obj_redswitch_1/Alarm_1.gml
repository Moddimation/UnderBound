if(global.phasing == 1) {
    global.facing++;
    obj_solidparent.solid= 0;
    obj_readablesolid.solid= 0;
    obj_mainchara.vspeed= 5;
    obj_mainchara.image_alpha= 0.5;
    if(global.facing > 3) global.facing= 0;
    alarm[1]= 4;
}

