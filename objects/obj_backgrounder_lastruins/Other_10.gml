scrollspeed[0]= 0.1;
scrollspeed[1]= 0.3;
scrollspeed[2]= 0.5;
scrollspeed[3]= 0.6;
scrollspeed[4]= 0.7;
scrollspeed[5]= 0.8;
scrollspeed[6]= 0.9;
i= 0;
while(i < 7) {
    xxx= __view_get( e__VW.XView, 0 );
    if(xxx > room_width - 320) xxx= room_width - 320;
    if(xxx >= 0)
        __background_set( e__BG.X, i, floor(xxx - xxx * scrollspeed[i]) );
    gg= room_width - 320;
    if(xxx >= room_width - 320)
        __background_set( e__BG.X, i, 0 + floor(gg - gg * scrollspeed[i]) );
    i++;
}

