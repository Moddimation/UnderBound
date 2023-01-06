if(instance_exists(obj_mainchara ) && obj_mainchara.cutscene == 1) {
    o= 1570;
    if(obj_mainchara.x >= 450) __view_set( e__VW.Object, 0, -4 );
    if(obj_mainchara.x < 450) {
        __view_set( e__VW.Object, 0, 1570 );
        __view_set( e__VW.XView, 0, round(o.x - __view_get( e__VW.WView, 0 ) / 2 + o.sprite_width / 2) );
        __view_set( e__VW.YView, 0, round(o.y - __view_get( e__VW.HView, 0 ) / 2 + o.sprite_height / 2) );
    }
}

/* */
/*  */
