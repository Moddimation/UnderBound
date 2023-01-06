if(instance_exists(obj_mainchara ) && obj_mainchara.x > x && con == 0) {
    con= 2;
    musfade= instance_create(0, 0, obj_musfadeout );
    musfade.fadespeed= 0.01;
    if(instance_exists(obj_speartilegen )) {
        // obj_speartilegen
        with(1046) instance_destroy();
    }
    undyne= instance_create(__view_get( e__VW.XView, 0 ) - 420, 100, obj_undynea_actor );
    undyne.rsprite= 1456;
    undyne.direction= 0;
    undyne.sprite_index= undyne.rsprite;
}
if(instance_exists(obj_mainchara ) && con == 2 && obj_mainchara.x < x - 320 && global.interact == 0) {
    con= 1.5;
    alarm[4]= 30;
    global.interact= 1;
    curview= __view_get( e__VW.XView, 0 );
    obj_mainchara.cutscene= 1;
}
if(con == 2.5) con= 3;
if(con == 3) {
    __view_set_pp( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - 1 );
    if(__view_get( e__VW.XView, 0 ) < curview - 50) {
        con= 3.1;
        alarm[4]= 140;
    }
}
if(con == 3.1) {
    undyne.fun= 3;
    undyne.hspeed= 1;
    undyne.image_speed= 0.1;
}
if(con == 4.1) {
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    con= 5;
    alarm[4]= 60;
}
if(con == 6) {
    con= 7;
    snd_play(snd_spearappear );
    alarm[4]= 30;
}
if(con == 8) {
    snd_play(snd_arrow );
    rr= 1;
    repeat(3)  {
        ar= instance_create(170 + rr * 6 + random(3), -223 + rr * 3 + random(6), obj_npc_marker );
        ar.visible= 1;
        ar.sprite_index= spr_undynespear ;
        ar.image_angle= -90;
        ar.vspeed= 24;
        ar.friction= -0.3;
        rr++;
    }
    con= 9;
}
if(con == 9 && ar.y > obj_mainchara.y) {
    snd_play(snd_spearrise );
    instance_create(0, 0, obj_flasher );
    scr_shake(2, 2, 2);
    con= 10;
    alarm[4]= 30;
}
if(con == 11) {
    global.phasing= 1;
    con= 12;
    alarm[4]= 70;
    dir= 0;
    int= 1;
    tspeed= 1;
    tgrav= 0.2;
}
if(con == 12) {
    if(dir == 0) {
        memx= random(int) - int / 2;
        memy= random(int) - int / 2;
        int+= 0.08;
        dir= 1;
    } else  {
        memx= -memx;
        memy= -memy;
        dir= 0;
    }
    obj_mainchara.x+= memx;
    obj_mainchara.y+= memy;
    tile_layer_shift(1000010, memx, memy);
}
if(con == 13) {
    con= 14;
    alarm[4]= 110;
}
if(con == 14 || con == 15) {
    tspeed+= tgrav;
    global.border= 0;
    global.flag[15]= 0;
    global.flag[16]= 0;
    SCR_BORDERSETUP();
    tile_layer_shift(1000010, 1, tspeed);
    obj_mainchara.x++;
    obj_mainchara.y+= tspeed - 0.8;
    obj_mainchara.image_angle-= 0.5;
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
    f= instance_create(0, 0, obj_whitefader );
    f.tspeed= 0.001;
}
if(con == 15) {
    snd_play(snd_splash );
    // obj_whitefader
    with(150) instance_destroy();
    alarm[4]= 3;
    con= 16;
}
if(con == 17) {
    g= instance_create(0, 0, obj_npc_marker );
    g.visible= 1;
    obj_mainchara.x= 20;
    obj_mainchara.y= 20;
    obj_mainchara.cutscene= 0;
    g.depth= 10;
    g.sprite_index= spr_pixblk ;
    g.image_xscale= 100;
    g.image_yscale= 100;
    tempmusic= caster_load("music/musicbox.ogg");
    con= 18;
    tempvol= 0;
    temppitch= 0.7;
    alarm[4]= 120;
}
if(con == 19) {
    caster_loop(tempmusic, tempvol, 0.7);
    global.typer= 35;
    global.msc= 0;
    global.facechoice= 0;
    global.msg[0]= "It sounds like it&came from over&here.../";
    global.msg[1]= "Oh^1! You\\'ve fallen&down^1, haven\\'t you.../";
    global.msg[2]= "Are you okay?/";
    global.msg[3]= "Here^1, get up.../";
    global.msg[4]= ".../";
    global.msg[5]= global.charname + "^1, huh?/";
    global.msg[6]= "That\\'s a nice name./%%";
    instance_create(50, 80, OBJ_WRITER );
    con= 20;
}
if(con == 19 || con == 20) {
    if(tempvol < 1) tempvol+= 0.02;
    caster_set_volume(tempmusic, tempvol);
}
if(con == 20 && !instance_exists(OBJ_WRITER )) {
    global.typer= 36;
    global.msg[0]= " My name is     %%";
    instance_create(50, 80, OBJ_WRITER );
    q= instance_create(0, 0, obj_whitefader );
    q.tspeed= 0.01;
    con= 21;
}
if(con == 21) {
    if(tempvol > 0) tempvol-= 0.008;
    temppitch+= 0.004;
    caster_set_volume(tempmusic, tempvol);
    caster_set_pitch(tempmusic, temppitch);
    if(tempvol <= 0.009) {
        caster_free(tempmusic);
        con= 22;
    }
}
if(con == 22) room_goto_next();

/* */
/*  */
