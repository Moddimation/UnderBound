scr_depth(0, 0, 0, 0, 0);
buffer--;
if(myinteract == 1 && buffer >= 0) myinteract= 0;
if(con == 0 && myinteract == 1 && global.interact == 0 && buffer < 0) {
    caster_pause(global.currentsong);
    con= 1;
    global.interact= 1;
    sprite_index= spr_mushroomdance_prep ;
    image_index= 0;
}
if(con == 1) {
    image_index+= 0.25;
    if(image_index >= 4) {
        global.msg[0]= "* Mushroom danc^2e&* Mushroom danc^2e&* Whatever could it mean/%%";
        scr_regulartext();
        con= 2;
        caster_loop(133, 1, 1);
        remx= x;
        siner= 0;
        image_index= 0;
        image_speed= 0.2;
        sprite_index= spr_mushroomdance_mid ;
    }
}
if(con == 2) {
    siner++;
    x= remx + sin(siner / 6) * 2;
}
if(con == 9) {
    global.msg[0]= "* It symbolizes my inner&  pain./%%";
    global.msg[0]= "* It symbolizes my inner&  torment^1, trapped here&  by my hyphae./";
    global.msg[1]= "* My struggle to pull away^1.&* My struggle to escape^1.&* But alas^1, to no avail./%%";
    if(talkedto > 0) {
        global.msg[0]= "* If only I could see the&  world above./";
        global.msg[1]= "* But even if the barrier&  was open^1, how would I&  leave...?/%%";
    }
    if(global.kills > 0) {
        global.msg[0]= "* It means you\\'ve lived a&  life of sin./%%";
        if(talkedto > 0)
            global.msg[0]= "* It means..^1.&* Don\\'t talk to me./%%";
    }
    if(global.flag[7] == 1) {
        global.msg[0]= "* It symbolizes my unbridled&  happiness./";
        global.msg[1]= "* The government told me&  they are willing to&  transplant me outside!/";
        global.msg[2]= "* Why didn\\'t you smile at my&  dance^1? It almost feels&  a little rude.../%%";
    }
    scr_regulartext();
    con= 10;
}
if(con == 7) {
    image_index= 2;
    con= 8;
    alarm[4]= 40;
}
if(con == 5) {
    image_index= 1;
    con= 6;
    alarm[4]= 1;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    caster_stop(133);
    image_index= 0;
    image_speed= 0;
    if(x < remx) x++;
    if(x > remx) x--;
    if(abs(x - remx) < 1.5) {
        image_speed= 0;
        x= remx;
        sprite_index= spr_mushroomdance_end ;
        image_index= 0;
        con= 4;
        alarm[4]= 40;
    }
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    talkedto++;
    sprite_index= spr_mushroomdance_prep ;
    image_index= 0;
    con= 0;
    global.interact= 0;
    myinteract= 0;
    buffer= 5;
    caster_resume(global.currentsong);
}


/*  */
