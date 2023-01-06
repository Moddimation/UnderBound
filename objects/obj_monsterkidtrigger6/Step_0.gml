if(con == 0 && instance_exists(obj_mainchara ) && obj_mainchara.x > 120) {
    with(mkid) {
        follow= 99;
        move_towards_point(320, 100, 4);
        sprite_index= rsprite;
        image_speed= 0.25;
    }
    con= 1;
}
if(con == 1) {
    with(mkid) sprite_index= rsprite;
    ganer+= 0.334;
    if(instance_exists(mkid)) mkid.image_index= ganer;
    if(mkid.x >= 316) {
        mkid2= mkid;
        mkid= instance_create(mkid2.x, mkid2.y, obj_townnpc_monsterkid1 );
        mkid.direction= 0;
        with(mkid) sprite_index= spr_mkid_rt ;
        with(mkid2) instance_destroy();
        con= 2;
    }
}
if(con == 4) {
    con= 5;
    alarm[4]= 120;
}
if(con == 6 && !instance_exists(OBJ_WRITER ) && global.interact == 0) {
    unbuffer++;
    // obj_mainchara
    with(1570) uncan= 1;
} else  {
    if(con == 6) {
        unbuffer= 0;
        // obj_mainchara
        with(1570) uncan= 0;
    }
}
if(con == 6 && !instance_exists(OBJ_WRITER ) && global.interact == 0 && unbuffer >= 4) {
    // obj_mainchara
    with(1570) uncan= 1;
    // obj_dialoguer
    with(779) instance_destroy();
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_choicer
    with(783) instance_destroy();
    global.interact= 1;
    with(mkid) {
        fun= 1;
        scr_npc_watch(0);
        image_speed= 0.25;
    }
    global.msg[0]= "* Yo^1, you wanna see&  Undyne^1, right...?/";
    global.msg[1]= "* Climb on my shoulders./%%";
    if(global.flag[85] == 1)
        global.msg[1]= "* Put up your umbrella and&  climb on my shoulders./%%";
    scr_regulartext();
    con= 7;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    alarm[7]= 5;
    global.plot= 112;
    mkid.fun= 1;
    mkid.sprite_index= spr_mkid_prostrate ;
    con= 8;
    global.interact= 0;
}
if(con == 10) {
    global.phasing= 1;
    global.interact= 1;
    mkid.solid= 0;
    obj_mainchara.facing= 1;
    global.facing= 1;
    obj_mainchara.image_speed= 0.25;
    difx= mkid.x - obj_mainchara.x;
    dify= mkid.y - 18 - obj_mainchara.y;
    con= 11;
    alarm[4]= 10;
}
if(con == 11) {
    obj_mainchara.x+= difx / 10;
    obj_mainchara.y+= dify / 10;
}
if(con == 12) {
    con= 13;
    alarm[4]= 20;
    difx= 345 - obj_mainchara.x;
    dify= 70 - obj_mainchara.y;
}
if(con == 14) {
    con= 15;
    alarm[4]= 10;
}
if(con == 15) {
    obj_mainchara.x+= difx / 10;
    obj_mainchara.y+= dify / 10;
}
if(con == 16) {
    con= 17;
    alarm[4]= 30;
    obj_mainchara.image_speed= 0;
}
if(con == 18) {
    mkid.image_speed= 0;
    mkid.sprite_index= mkid.rtsprite;
    con= 19;
    alarm[4]= 20;
}
if(con == 20) {
    side= 1;
    ledgewall.x-= 20;
    mkid.image_speed= 0.25;
    global.msg[0]= "* Yo^1, you go on ahead./";
    global.msg[1]= "* Don\\'t worry about me^1.&* I always find a way to&  get through!/%%";
    if(scr_murderlv() >= 9 && global.flag[27] == 0) {
        global.msg[0]= "* Owww..^1.&* Yo^1, try being a little&  less rough^1, haha./";
        global.msg[1]= "* Anyway^1, I\\'ll look for&  another way through^1.&* Later!/%%";
    }
    scr_regulartext();
    con= 21;
    global.phasing= 0;
}
if(con == 21 && !instance_exists(OBJ_WRITER )) {
    mkid.direction= 180;
    mkid.fun= 0;
    mkid.hspeed= -5;
    con= 25;
    alarm[4]= 12;
}
if(con == 26) {
    mkid.hspeed= 0;
    mkid.fun= 1;
    mkid.image_index= 0;
    mkid.image_speed= 0.334;
    mkid.sprite_index= spr_mkid_trip_l ;
    con= 49.2;
}
if(con == 49.2 && mkid.image_index >= 19) {
    mkid.image_index= 0;
    mkid.x-= 13;
    mkid.sprite_index= mkid.lsprite;
    con= 22;
    alarm[4]= 25;
}
if(con == 23) {
    mkid.hspeed= -3;
    global.plot= 113;
    global.flag[91]= 10;
    global.interact= 0;
    con= 24;
}

/* */
/*  */
