alarm[1]= 1;
repeat(2)  {
    if(room == 106)
        instance_create(__view_get( e__VW.XView, 0 ) - 40 + random(360), __view_get( e__VW.YView, 0 ) - random(50) - 70, obj_normaldrop );
    if(room == 107)
        instance_create(120 + random(60), __view_get( e__VW.YView, 0 ) - random(240), obj_normaldrop );
}
if(room == 109) {
    d= instance_create(random(340), __view_get( e__VW.YView, 0 ) - random(50) - 90, obj_normaldrop );
    d.dont= 1;
    d= instance_create(random(180) + 340, __view_get( e__VW.YView, 0 ) - random(50) - 130, obj_normaldrop );
    d.dont= 1;
}

/* */
/*  */
