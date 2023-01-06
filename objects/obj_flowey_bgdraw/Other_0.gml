i= 0;
while(i < 8) {
    siner2= siner + i;
    __background_set( e__BG.Alpha, i, 0.5 + sin(siner2 / 8) * 0.4 );
    __background_set( e__BG.X, i, __background_get( e__BG.X, i ) + (sin(siner2 / 8) * 1) );
    i++;
}
siner++;

