if(movement == 1 || movement == 2) {
    if(confuse == 0) {
        x+= global.sp;
        if(keyboard_multicheck(16) == 1)
            x-= global.sp / 2;
    }
    if(confuse == 1 && x > global.idealborder[0] + 8) {
        x-= global.sp;
        if(keyboard_multicheck(16) == 1)
            x+= global.sp / 2;
    }
}


/*  */