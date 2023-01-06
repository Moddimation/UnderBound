if(side == 0) {
    x-= 160;
    hspeed= -9 - random(8);
    vspeed= 4 + random(10);
}
if(side == 1) {
    x+= 160;
    hspeed= 9 + random(8);
    vspeed= 4 + random(10);
}
i= 0;
while(i < 18) {
    xprev[i]= x;
    yprev[i]= y;
    i++;
}

