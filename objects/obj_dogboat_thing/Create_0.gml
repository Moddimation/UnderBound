__view_set( e__VW.YView, 0, 0 );
reg= 1;
up= 0;
if(room == 70 == 1) up= 1;
if(global.plot < 122) {
    instance_destroy();
    exit;
} else  {
    if(global.entrance == 1) {
        if(global.flag[460] % 2 == 1) global.flag[461]= 1;
        else  global.flag[461]= 0;
    }
    if(global.flag[461] == 1) reg= 0;
    else  reg= 1;
    image_speed= 0;
    con= 0;
    siner= 0;
    dogy= 0;
    if(reg == 1) sprite_index= spr_regboat ;
    cc= 0;
    bgspeed= 0;
    lapbg= 0;
    rman= instance_create(x + 20, y - 15, obj_riverman );
    depth= rman.depth + 10;
    snapper= 999999;
    myinteract= 0;
    type= 0;
    if(room == 316 && type == 0) {
        myinteract= 99;
        type= 1;
        depth= 900000;
        obj_mainchara.cutscene= 1;
        __view_set( e__VW.Object, 0, -4 );
        __view_set( e__VW.XView, 0, 0 );
        x= 340;
        lapbg= 1;
        con= 6;
        if(global.flag[461] == 0) reg= 1;
        else  reg= 0;
        if(reg == 0) sprite_index= spr_dogboat ;
        if(reg == 1) sprite_index= spr_regboat ;
        snapper= 1570;
        global.interact= 1;
        if(reg == 0) bgspeed= 8;
        if(reg == 1) bgspeed= 4;
    }
    if(type == 0 && global.entrance == 24) {
        snapper= 1570;
        myinteract= 99;
        type= 1;
        lapbg= 0;
        depth= 900000;
        obj_mainchara.cutscene= 1;
        __view_set( e__VW.Object, 0, -4 );
        __view_set( e__VW.XView, 0, 0 );
        x= 340;
        con= 50;
        if(global.flag[461] == 0) reg= 1;
        else  reg= 0;
        if(reg == 0) sprite_index= spr_dogboat ;
        if(reg == 1) sprite_index= spr_regboat ;
    }
    if(lapbg == 1) {
        tilex= -320;
        tile_layer_shift(1000000, -320, 0);
    }
    if(up == 1) depth= 950000;
    __view_set( e__VW.YView, 0, 0 );
    exit;
}


/*  */
