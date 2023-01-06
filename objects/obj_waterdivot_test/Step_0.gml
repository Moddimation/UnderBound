x+= sin(siner / 6) * sinerfactor;
siner++;
if(x > room_width) {
    x= -10;
    if(room == 68) x= 2300;
}
if(room == 82) {
    if(y <= 50 && x >= 460 && moved == 0) {
        vspeed= -hspeed;
        hspeed= 0;
        moved= 1;
    }
    if(y <= 70 && x >= 480 && moved == 0) {
        vspeed= -hspeed;
        hspeed= 0;
        moved= 1;
    }
    if(y <= 90 && x >= 500 && moved == 0) {
        vspeed= -hspeed;
        hspeed= 0;
        moved= 1;
    }
    if(y <= -15) {
        moved= 0;
        x= -10;
        hspeed= 1.5;
        y= ystart;
        vspeed= 0;
    }
}

