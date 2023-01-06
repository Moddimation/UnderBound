if(falling == 999) {
    x= xprevious;
    y= yprevious;
    hspeed= 0;
    vspeed= 0;
    bonk= 1;
    // obj_rollsnowgen
    with(1014) alarm[0]= 10;
    instance_destroy();
}

