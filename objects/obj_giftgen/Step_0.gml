if(siner > 0) {
    i= 0;
    siner++;
    repeat(3)  {
        if(rr != 3) blt[i].sinex+= 5;
        else  blt[i].sinex+= 2;
        blt[i].x= sin(blt[i].sinex / 100 * 3.14159265358979) * (global.idealborder[1] - global.idealborder[0] - 45) / 2 + global.idealborder[0] + 67;
        i++;
        if(siner > 20) vspeed-= 0.04;
    }
}

