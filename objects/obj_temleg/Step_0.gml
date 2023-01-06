if(control == 1) {
    if(keyboard_check(39)) hspeed+= 0.2;
    if(keyboard_check(37)) hspeed-= 0.2;
    if(keyboard_check(40) && height > 4) {
        height--;
        y++;
    }
    if(keyboard_check(38)) {
        height++;
        y--;
    }
}
siner-= hspeed;
if(global.turntimer < 1) instance_destroy();

/* */
/*  */
