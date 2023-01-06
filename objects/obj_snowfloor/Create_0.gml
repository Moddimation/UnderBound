x+= 2.2;
y++;
yy= 0;
xx= 0;
while(yy < 5) {
    snowx[yy,xx]= x + xx * 4;
    if(xx == 4)
        snowx[yy,xx]-= 0.2;
    snowy[yy,xx]= y + yy * 4;
    dodraw[yy,xx]= 1;
    moveme[yy,xx]= 1;
    if(xx == 4) {
        xx= -1;
        yy++;
    }
    xx++;
}

