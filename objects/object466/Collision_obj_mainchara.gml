if(falling == 0) {
    if(bonk == 1) {
        hspeed= 0;
        vspeed= 0;
        bonk= 0;
    } else  {
        if(obj_time.left == 1) {
            if(hspeed > -4) hspeed= -4;
            else  hspeed-= 0.5 / size + 0.05;
        }
        if(obj_time.up == 1) {
            if(vspeed > -3) vspeed= -3;
            else  vspeed-= 0.5 / size + 0.05;
        }
        if(obj_time.right == 1)
            hspeed+= 0.6 / size + 0.05;
        if(obj_time.down == 1) vspeed+= 0.6 / size + 0.05;
        if(speed < 0.4) {
        }
        t= 1;
    }
}

