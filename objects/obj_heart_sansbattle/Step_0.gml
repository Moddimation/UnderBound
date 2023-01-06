if(movement == 1) {
    if(keyboard_check(37)) x-= 5;
    if(keyboard_check(39)) x+= 5;
    if(keyboard_check(40)) y+= 5;
    if(keyboard_check(38)) y-= 5;
}
if(movement == 2) {
    hspeed= 0;
    if(keyboard_check(37)) x-= 5;
    if(keyboard_check(39)) x+= 5;
    if(keyboard_check(38) && jumpstage == 1 && vspeed == 0) {
        jumpstage= 2;
        vspeed= -6;
    }
}
if(movement == 11) {
    vspeed= 0;
    if(keyboard_check(38)) y-= 5;
    if(keyboard_check(40)) y+= 5;
    if(keyboard_check(37) && jumpstage == 1 && hspeed == 0) {
        jumpstage= 2;
        hspeed= -6;
    }
}
if(movement == 12) {
    hspeed= 0;
    if(keyboard_check(37)) x-= 5;
    if(keyboard_check(39)) x+= 5;
    if(keyboard_check(40) && jumpstage == 1 && vspeed == 0) {
        jumpstage= 2;
        vspeed= 6;
    }
}
if(movement == 13) {
    vspeed= 0;
    if(keyboard_check(38)) y-= 5;
    if(keyboard_check(40)) y+= 5;
    if(keyboard_check(39) && jumpstage == 1 && hspeed == 0) {
        jumpstage= 2;
        hspeed= 6;
    }
}
if(jumpstage == 2 && movement == 2) {
    if(keyboard_check_direct(38) == 0 && vspeed <= -1) vspeed= -1;
    if(vspeed > 0.5 && vspeed < 8) vspeed+= 0.6;
    if(vspeed > -1 && vspeed <= 0.5)
        vspeed+= 0.2;
    if(vspeed > -4 && vspeed <= -1) vspeed+= 0.5;
    if(vspeed <= -4) vspeed+= 0.2;
}
if(jumpstage == 2 && movement == 11) {
    if(keyboard_check_direct(37) == 0 && hspeed <= -1) hspeed= -1;
    if(hspeed > 0.5 && hspeed < 8) hspeed+= 0.6;
    if(hspeed > -1 && hspeed <= 0.5)
        hspeed+= 0.2;
    if(hspeed > -4 && hspeed <= -1) hspeed+= 0.5;
    if(hspeed <= -4) hspeed+= 0.2;
}
if(jumpstage == 2 && movement == 12) {
    if(keyboard_check_direct(40) == 0 && vspeed >= 1) vspeed= 1;
    if(vspeed < -0.5 && vspeed > -8)
        vspeed-= 0.6;
    if(vspeed < 1 && vspeed >= -0.5)
        vspeed-= 0.2;
    if(vspeed < 4 && vspeed >= 1) vspeed-= 0.5;
    if(vspeed >= 4) vspeed-= 0.2;
}
if(jumpstage == 2 && movement == 13) {
    if(keyboard_check_direct(39) == 0 && hspeed >= 1) hspeed= 1;
    if(hspeed < -0.5 && hspeed > -8)
        hspeed-= 0.6;
    if(hspeed < 1 && hspeed >= -0.5)
        hspeed-= 0.2;
    if(hspeed < 4 && hspeed >= 1) hspeed-= 0.5;
    if(hspeed >= 4) hspeed-= 0.2;
}
if(movement != 20) {
    if(ignore_border == 0) {
        if(x < global.idealborder[0] + 4) {
            x= global.idealborder[0] + 4;
            event_user(7);
            if(hspeed < 0) hspeed= 0;
            if(movement == 13) jumpstage= 1;
        }
        if(y < global.idealborder[2] + 4) {
            y= global.idealborder[2] + 4;
            event_user(7);
            if(vspeed < 0) vspeed= 0;
            if(movement == 12) jumpstage= 1;
        }
        if(x > global.idealborder[1] - 16) {
            x= global.idealborder[1] - 16;
            event_user(7);
            if(hspeed > 0) hspeed= 0;
            if(movement == 11) jumpstage= 1;
        }
        if(y > global.idealborder[3] - 16) {
            y= global.idealborder[3] - 16;
            event_user(7);
            if(vspeed > 0) vspeed= 0;
            if(movement == 2) jumpstage= 1;
        }
    }
} else  {
    if(keyboard_check_pressed(39)) mv20x++;
    if(keyboard_check_pressed(37)) mv20x--;
    if(keyboard_check_pressed(38)) mv20y= 0;
    if(keyboard_check_pressed(40)) mv20y= 1;
    if(mv20x < 0) mv20x= 3;
    if(mv20x > 3) mv20x= 0;
    if(mv20y == 0) {
        x= 64;
        y= 278;
    }
    if(mv20y == 1) {
        y= 444;
        if(mv20x == 0) x= 40;
        if(mv20x == 1) x= 196;
        if(mv20x == 2) x= 354;
        if(mv20x == 3) x= 508;
    }
}


/*  */
