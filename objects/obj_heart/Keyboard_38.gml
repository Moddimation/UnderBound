if(movement == 1) {
    if(confuse == 0) {
        y-= global.sp;
        if(keyboard_multicheck(16) == 1)
            y+= global.sp / 2;
    }
    if(confuse == 1 && y < global.idealborder[3] - 8) {
        y+= global.sp;
        if(keyboard_multicheck(16) == 1)
            y-= global.sp / 2;
    }
}
if(movement == 2 && jumpstage == 1 && vspeed == 0) {
    jumpstage= 2;
    vspeed= -6;
}


/*  */
