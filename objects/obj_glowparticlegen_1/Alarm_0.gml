if(x > __view_get( e__VW.XView, 0 ) - 100 && x < __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) + 100 && y > __view_get( e__VW.YView, 0 ) - 100 && y < __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) + 100)
    instance_create(x + random(60) - 20, y - 15, obj_glowparticle_1 );
alarm[0]= 10;


/*  */
