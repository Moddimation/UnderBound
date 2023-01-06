buffer--;
if(myinteract == 1 && buffer > 0) myinteract= 0;
if(myinteract == 1 && global.flag[492] == 1) {
    h= 0;
    scr_itemcheck(56);
    if(haveit == 1) h= 1;
    scr_itemcheck(57);
    if(haveit == 1) h= 1;
    if(h == 0) {
        global.msc= 0;
        global.facechoice= 0;
        global.typer= 5;
        global.msg[0]= "* (There\\'s no response.)/%%";
        instance_create(0, 0, obj_dialoguer );
    }
    if(h == 1) {
        global.msc= 825;
        global.facechoice= 0;
        global.typer= 5;
        instance_create(0, 0, obj_dialoguer );
    }
    global.interact= 1;
    myinteract= 2;
}
if(myinteract == 2 && !instance_exists(OBJ_WRITER )) {
    buffer= 4;
    myinteract= 0;
    global.interact= 0;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    i= 0;
    while(i < 9) {
        if(global.item[i] == 56 || global.item[i] == 57)
            script_execute(scr_itemshift , i, 0);
        i++;
    }
    global.interact= 1;
    caster_stop(global.currentsong);
    chainsaw= caster_load("music/sfx_chainsaw.ogg");
    con= 2.1;
    alarm[4]= 40;
}
if(con == 3.1 && !instance_exists(OBJ_WRITER )) {
    global.typer= 47;
    global.facechoice= 0;
    global.msc= 0;
    global.msg[0]= "* (...)/";
    global.msg[1]= "* (O^1-oh n^1-no^1, is that another&  letter...?)/";
    global.msg[2]= "* (I don\\'t want to open it...^1)&* (C-^1can\\'t I just slide it&  back out...?)/";
    global.msg[3]= "* (...)/";
    global.msg[4]= "* (N..^1. no..^1. I can\\'t keep doing&  this.^1)&* (I\\'ll read this one.)/";
    global.msg[5]= "* (...)/";
    global.msg[6]= "* (Um...^1)&* (I-it\\'s shut k-kind of&  strongly^1, isn\\'t it?)/";
    global.msg[7]= "* (Wait a second...)/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    con= 3.2;
    alarm[4]= 30;
}
if(con == 2.1) global.interact= 1;
if(con == 4.2) {
    con= 5;
    alarm[4]= 110;
    caster_play(chainsaw, 0.8, 1);
}
if(con == 6) {
    alphys= scr_marker(x + 2, y + 35, 1650);
    alphys.depth= depth + 10;
    if(side == 1) alphys.sprite_index= spr_alphys_r ;
    open= 1;
    con= 7;
    alarm[4]= 25;
}
if(con == 8) {
    global.facechoice= 6;
    global.typer= 47;
    global.faceemotion= 9;
    global.flag[430]= 0;
    global.msg[0]= "* Hey^1, if this is a&  joke^1, it\\'s.../";
    global.msg[1]= "\\\\E1* .../";
    global.msg[2]= "\\\\E3* Oh My God?/";
    global.msg[3]= "\\\\E5* Did YOU write this&  letter?/";
    global.msg[4]= "\\\\E6* It wasn\\'t signed^1, so^1,&  I had no idea who&  could have.../";
    global.msg[5]= "\\\\E8* Oh my god^1.&* Oh no./";
    global.msg[6]= "\\\\E7* That\\'s adorable.../";
    global.msg[7]= "\\\\E5* And I h-had no idea&  you^1, um^1, wrote that way!/";
    global.msg[8]= "\\\\E9* It\\'s surprising^1, too..^1.&* After all the gross&  stuff I did.../";
    global.msg[9]= "\\\\E8* I don\\'t really deserve&  to be forgiven./";
    global.msg[10]= "\\\\E4* Much less^1, um.../";
    global.msg[11]= "\\\\E5* This?/";
    global.msg[12]= "\\\\E1* And so passionately^1,&  too./";
    global.msg[13]= "\\\\E2* .../";
    global.msg[14]= "\\\\E0* You know what^1, okay^1!&* I\\'ll do it!/";
    global.msg[15]= "\\\\E5* It\\'s the least I can&  do to make it up&  to you!/";
    global.msg[16]= "\\\\W*\\\\E7 Y-yeah^1!&* \\\\WLet\\'s \\\\Rgo on a date\\\\W!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 9;
}
if(con == 9 && !instance_exists(OBJ_WRITER )) {
    instance_create(0, 0, obj_battlerflowey );
    con= 10;
}


/*  */
