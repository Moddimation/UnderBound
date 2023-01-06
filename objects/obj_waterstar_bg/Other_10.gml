if(f_test == 1) {
    myview= __view_get( e__VW.XView, 0 );
    myview_b= __view_get( e__VW.XView, 0 );
    if(g_heart < 4 && obj_mainchara.x > room_width - 160)
        myview-= 140;
    g_heart++;
    gg= room_width - __view_get( e__VW.WView, 0 );
    if(myview < 0) myview= 0;
    if(x < myview - 20 && myview < gg) {
        x+= 350;
        xhome+= 350;
    }
    if(x > myview + 340) {
        x-= 350;
        xhome-= 350;
    }
    if(__view_get( e__VW.XView, 0 ) >= 0)
        x= xhome + round(__view_get( e__VW.XView, 0 ) - __view_get( e__VW.XView, 0 ) * scrollspeed);
    if(__view_get( e__VW.XView, 0 ) >= gg)
        x= xhome + round(gg - gg * scrollspeed);
}

