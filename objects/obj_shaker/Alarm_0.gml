if(hshake != 0) {
    if(hshake < 0) {
        __view_set( e__VW.XView, myview, __view_get( e__VW.XView, myview ) + (hshake) );
        hshake++;
    }
    if(hshake > 0)
        __view_set( e__VW.XView, myview, __view_get( e__VW.XView, myview ) + (hshake) );
    hshake= -hshake;
}
if(vshake != 0) {
    if(vshake > 0)
        __view_set( e__VW.YView, myview, __view_get( e__VW.YView, myview ) + (vshake) );
    if(vshake < 0) {
        __view_set( e__VW.YView, myview, __view_get( e__VW.YView, myview ) + (vshake) );
        vshake++;
    }
    vshake= -vshake;
}
alarm[myview]= shakespeed;
if(hshake == 0 && vshake == 0) instance_destroy();

