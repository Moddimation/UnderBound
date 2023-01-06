if(cl == 4) {
    if(vspeed > 0 && y > w_d) {
        y= w_d;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
    if(hspeed > 0 && x > w_r) {
        x= w_r;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
    if(vspeed < 0 && y < w_u) {
        y= w_u;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
    if(hspeed < 0 && x < w_l) {
        x= w_l;
        if(cl == 0) direction+= 90;
        else  direction-= 90;
    }
}
if(keyboard_check(37)) x= w_l;
if(keyboard_check(39)) x= w_r;
if(keyboard_check(38)) y= w_u;
if(keyboard_check(40)) y= w_d;

/* */
/*  */
