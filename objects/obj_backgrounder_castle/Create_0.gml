scrollspeed= 0.08;
repeat(10)  {
    rr= round(random(room_width / 6));
    rr*= 6;
    star= instance_create(rr, 2, obj_waterstar_bg );
    star.size= 0.9 + random(0.3);
}
repeat(20)  {
    rr= round(random(room_width / 6));
    rr*= 6;
    star= instance_create(rr, 2, obj_waterstar_bg );
    star.size= 0.5 + random(0.4);
}
repeat(40)  {
    rr= round(random(room_width / 6));
    rr*= 6;
    star= instance_create(rr, 2, obj_waterstar_bg );
    star.size= 0.4 + random(0.3);
}
__background_set( e__BG.X, 4, 200 );
if(instance_exists(obj_mainchara )) {
    // obj_mainchara
    with(1570) {
        if(rsprite == 1045) {
            rsprite= 1028;
            lsprite= 1029;
            dsprite= 1031;
            usprite= 1030;
        }
    }
}


/*  */
