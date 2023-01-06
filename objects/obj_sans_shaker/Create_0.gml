intensity= 10;
alarm[0]= 1;
self_d= 0;
// obj_sans_shaker
with(512) {
    self_d++;
    event_user(0);
}
self_d= 1;
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 0 );

