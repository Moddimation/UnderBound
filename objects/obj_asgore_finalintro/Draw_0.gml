global.myfight= -999;
if(con == -10) {
    obj_heart.x= -999;
    global.mnfight= 999;
    global.myfight= 999;
    // OBJ_WRITER
    with(782) instance_destroy();
    // OBJ_INSTAWRITER
    with(785) instance_destroy();
    global.msc= 0;
    global.typer= 61;
    if(murder == 0) {
        global.msg[0]= "* (A strange light fills the&  room.^4) %";
        global.msg[1]= "* (Twilight is shining through&  the barrier.^4) %";
        global.msg[2]= "* (It seems your journey is&  finally over.^4) %";
        global.msg[3]= "     * (You\\'re filled with&          DETERMINATION.^5) %%";
        instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        con= -9;
    } else  {
        con= -8;
        alarm[4]= 10;
    }
}
if(con == -9 && !instance_exists(OBJ_WRITER )) {
    obj_heart.x= -999;
    global.mnfight= 999;
    global.myfight= 999;
    con= -8;
    alarm[4]= 30;
}
if(con == -8) {
    obj_heart.x= -999;
    global.mnfight= 999;
    global.myfight= 999;
}
if(con == -7) {
    // OBJ_WRITER
    with(782) instance_destroy();
    // OBJ_INSTAWRITER
    with(785) instance_destroy();
    global.typer= 62;
    global.msg[0]= "Human.../";
    global.msg[1]= "\\\\E1It was&nice to&meet&you./";
    global.msg[2]= "\\\\E0Goodbye./%%";
    con= -6;
    if(murder == 1) {
        global.msg[0]= "\\\\E1Now,&now./";
        global.msg[1]= "There\\'s&no need&to&fight./";
        global.msg[2]= "Why not&settle&this.../";
        global.msg[3]= "Over a&nice cup&of tea?/%%";
        con= -120;
    }
    blcon2= instance_create(500, 120, obj_blconsm );
    blconwd2= instance_create(525, 130, OBJ_WRITER );
}
if(con == -6 && !instance_exists(OBJ_WRITER )) {
    // obj_blconsm
    with(186) instance_destroy();
    con= 3;
    if(special_end == 1) {
        con= -100;
        instance_create(0, 0, obj_friendscene );
        instance_destroy();
    }
}
if(con == 2) {
    obj_heart.x= -999;
    global.mnfight= 999;
    global.myfight= 999;
}
if(con == 3) {
    snd_play(snd_spearappear );
    image_index= 0;
    sprite_index= spr_asgore_brandish ;
    image_speed= 0;
    con= 6.1;
    alarm[4]= 5;
    hspeed= -20;
}
if(con == 6.1) {
    sc= scr_afterimage(0, 0);
    sc.size= 2;
    sc.image_xscale= 2;
    sc.image_yscale= 2;
    sc.image_alpha= 0.9;
}
if(con == 7.1) {
    hspeed= 0;
    con= 7;
    alarm[4]= 20;
}
draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, image_blend, 1);
if(con < 3)
    draw_sprite_ext(spr_asgore_bface , global.faceemotion, x + 138, y - 12, 2, 2, 0, 16777215, 1);
if(con == 8) {
    image_speed= 0.5;
    if(image_index == 2) caster_play(cutsound, 1, 1);
    if(image_index >= 2 && image_index < 4) {
        draw_set_alpha(0.5);
        if(image_index == 3) draw_set_alpha(1);
        draw_set_color(16777215);
        draw_rectangle(-1, -1, 999, 999, 0);
        draw_set_alpha(1);
    }
    if(image_index == 4) scr_shake(6, 3, 2);
    if(image_index >= 13) {
        image_speed= 0;
        con= 9;
        alarm[4]= 20;
    }
}
if(con == 9) {
    image_speed= 0;
    image_index= 13;
}
if(con == 10) {
    obj_battlecontroller.drawrect= 0;
    __background_set_colour( 16777215 );
    image_blend= 0;
    obj_fightbt.image_blend= 0;
    obj_itembt.image_blend= 0;
    obj_talkbt.image_blend= 0;
    image_index= 0;
    image_speed= 0;
    g= instance_create(268, 140, obj_asgorefakespear );
    g.image_blend= 255;
    g.image_xscale= 2;
    g.image_yscale= 2;
    obj_mercybutton_shatter.image_blend= 0;
    con= 12;
    alarm[4]= 20;
    vvv= 2.5;
    snd_play(snd_spearappear );
}
if(con == 12) {
    g.hspeed= 14.3;
    g.vspeed= -13;
    g.image_angle-= 4.5;
    hspeed= (500 - x) / 20;
    g.depth= -1000000;
    sc= scr_afterimage(0, 0);
    sc.size= 2;
    sc.image_xscale= 2;
    sc.image_yscale= 2;
    sc.image_alpha= 0.9;
    sc.depth= 100;
    with(g) {
        sc= scr_afterimage(0, 0);
        sc.depth= -99999;
        sc.size= 2;
        sc.image_xscale= 2;
        sc.image_yscale= 2;
        sc.image_alpha= 0.9;
    }
}
if(con == 13) {
    if(vvv > 0) vvv-= 0.1;
    g.hspeed= 0;
    g.vspeed= vvv;
    hspeed= 0;
    con= 18;
    alarm[4]= 30;
}
if(con == 18) {
    if(vvv > 0) vvv-= 0.1;
    g.hspeed= 0;
    g.vspeed= -vvv;
}
if(con == 19) {
    caster_free(-3);
    caster_play(swipesound, 1, 1);
    global.batmusic= caster_load("music/vsasgore.ogg");
    w_on= 0;
    whiteout= 0;
    blackout= 0;
    g.vspeed= 100;
    con= 20;
}
if(con == 20) {
    with(g) {
        sc= scr_afterimage(0, 0);
        sc.depth= depth + 1;
        sc.depth= -99999;
        sc.size= 2;
        sc.image_xscale= 2;
        sc.image_yscale= 2;
        sc.image_alpha= 0.9;
    }
}
if(con == 40) {
    depth= -100000;
    if(w_on == 0) whiteout+= 0.08;
    draw_set_color(16777215);
    draw_set_alpha(whiteout);
    draw_rectangle(-1, -1, 999, 999, 0);
    if(whiteout >= 1.8) w_on= 1;
    if(w_on == 1) {
        blackout+= 0.05;
        if(skip == 1 && blackout < 5.5)
            blackout+= 0.05;
        draw_set_alpha(blackout);
        draw_set_color(0);
        draw_rectangle(-1, -1, 999, 999, 0);
        if(blackout == 5.5) caster_loop(global.batmusic, 1, 1);
        fdhjfd= 9999;
        if(blackout == 7) {
            con= 50;
            global.mnfight= 0;
            global.myfight= 0;
            __background_set_colour( 0 );
            obj_battlecontroller.drawrect= 1;
            obj_fightbt.image_blend= 16777215;
            obj_itembt.image_blend= 16777215;
            obj_talkbt.image_blend= 16777215;
            obj_fightbt.sprite_index= spr_fightbt ;
            obj_itembt.sprite_index= spr_itembt ;
            obj_talkbt.sprite_index= spr_talkbt ;
            obj_borderparent.visible= 1;
            instance_create(0, 0, obj_orangeparticlegen );
            instance_create(0, 0, obj_purplegradienter );
            obj_heart.visible= 1;
            global.mnfight= 3;
            global.myfight= -1;
            global.bmenuno= 0;
            global.monster[0]= 0;
            global.monster[1]= 0;
            global.monster[2]= 0;
            global.monstertype[0]= 52;
            global.monsterinstance[0]= instance_create(208, 8, obj_asgoreb );
            global.msc= 0;
            global.msg[0]= "* ASGORE attacks!";
            draw_set_alpha(1);
            instance_destroy();
        }
    }
    draw_set_alpha(1);
}
if(con == -120 && !instance_exists(OBJ_WRITER )) {
    // obj_blconsm
    with(186) instance_destroy();
    global.stretch= 1;
    sl= instance_create(320, 120, obj_slice );
    sl.depth= -90000;
    con= -119;
    alarm[4]= 25;
}
if(con == -118) {
    snd_play(snd_damage );
    asg= instance_create(128, 46, obj_asgore_lastcutscene );
    global.faceemotion= 3;
    asg.murder= 1;
    instance_destroy();
}


/*  */
