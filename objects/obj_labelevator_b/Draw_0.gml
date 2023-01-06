if(con == 1) {
    caster_free(-3);
    snd_play(snd_phone );
    global.typer= 21;
    global.msc= 0;
    global.facechoice= 0;
    global.msg[0]= "* (Ring...)/";
    global.msg[1]= "* (It\\'s a voice you have&  never heard before.)/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    global.typer= 79;
    global.msg[0]= "* " + global.charname + "..^1.&* Are you there?/";
    global.msg[1]= "* It\\'s been a long time^1,&  hasn\\'t it...?/";
    global.msg[2]= "* But you\\'ve done well./";
    global.msg[3]= "* Thanks to you^1, everything&  has fallen into place./";
    global.msg[4]= "* " + global.charname + ".../";
    global.msg[5]= "* See you soon./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    rect= 1;
    snd_play(snd_spearappear );
    con= 4;
    alarm[4]= 9;
}
if(con == 5) {
    snd_play(snd_impact );
    con= 6;
    alarm[4]= 30;
}
if(con == 7) {
    global.facing= 0;
    la= instance_create(0, 0, obj_labelevator_a );
    with(la) blacktime= 0;
    con= 8;
}
if(rect == 1) {
    if(rectaur < 20) rectaur+= 2;
    draw_set_color(0);
    draw_rectangle(140, 180, 140 + rectaur, 250, 0);
    draw_rectangle(180, 180, 180 - rectaur, 250, 0);
    if(room == 261) {
        draw_rectangle(0, 120, 99, 120 + rectaur, 0);
        draw_rectangle(0, 160, 99, 160 - rectaur, 0);
    }
}


/*  */
