scr_depth(0, 0, 0, 0, 0);
if(global.flag[107] == 0) {
    hasdog= 0;
    i= 0;
    while(i < 8) {
        if(global.item[i] == 27) hasdog= 1;
        i++;
    }
    if(hasdog == 0) {
        noroom= 0;
        scr_itemget(27);
        if(noroom != 1) global.flag[107]= 2;
    }
}
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    myinteract= 0;
    global.interact= 1;
    caster_pause(global.currentsong);
    snd_play(snd_grab );
    if(global.facing != 3) {
        dog= instance_create(obj_mainchara.x + 30, obj_mainchara.y + 10, obj_tobdog_pendant );
        dog.sprite_index= spr_tobdogr ;
    } else  {
        dog= instance_create(obj_mainchara.x - 30, obj_mainchara.y + 10, obj_tobdog_pendant );
        dog.sprite_index= spr_tobdogl ;
    }
    alarm[4]= 30;
    con= 2;
}
if(con == 3) {
    with(dog) con= 1;
    caster_play(dogsong, 1, 1);
    con= 4;
}
if(con == 5) {
    res= floor(random(5));
    scr_itemget(29 + res);
    global.interact= 0;
    caster_stop(dogsong);
    caster_set_volume(global.currentsong, 0);
    caster_resume(global.currentsong);
    instance_create(0, 0, obj_musfadein );
    global.flag[107]= 1;
    con= 6;
    myinteract= 0;
    anti_buffer= 0;
}
if(con > 0 && con < 6) {
    global.interact= 1;
    anti_buffer= 1;
}

/* */
/*  */
