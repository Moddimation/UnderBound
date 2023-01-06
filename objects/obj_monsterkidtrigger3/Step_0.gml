if(con == 1) {
    global.facechoice= 0;
    global.typer= 5;
    global.msc= 0;
    if(global.flag[90] == 3) global.msg[0]= "* Yo.../%%";
    if(global.flag[90] == 2) {
        if(global.flag[85] == 0) {
            global.msg[0]= "* Yo..^1./";
            global.msg[1]= "* Where\\'s the umbrella...^1?&* Ha... ha.../%%";
            global.flag[90]= 3;
        }
        if(global.flag[85] == 1) global.msg[0]= "* Yo^1!&* Ready yet?/%%";
    }
    if(global.flag[90] == 1) {
        if(global.flag[85] == 0) global.msg[0]= "* Yo^1!&* Ready yet?/%%";
        if(global.flag[85] == 1) {
            global.msg[0]= "* Yo^1!&* You got us an umbrella?/";
            global.msg[1]= "* You\\'re the best!/%%";
            global.flag[90]= 2;
        }
    }
    if(global.flag[90] == 0) {
        if(global.flag[85] == 1) {
            global.msg[0]= "* Yo^1, you got an umbrella?/";
            global.msg[1]= "* Awesome!/%%";
            global.flag[90]= 2;
        }
        if(global.flag[85] == 0) {
            global.msg[0]= "* Yo^1! You can\\'t hold an&  umbrella either?/";
            global.msg[1]= "* If you\\'re walking anyway^1,&  I guess I\\'ll go with you^1,&  haha.../%%";
            global.flag[90]= 1;
        }
    }
    instance_create(0, 0, obj_dialoguer );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    with(mkid) {
        follow= 1;
        sprite_index= dsprite;
    }
    global.interact= 1;
    con= 3;
    alarm[4]= 30;
}
if(con == 4 && instance_exists(mkid) && mkid.follow == 3) {
    global.msc= 0;
    with(mkid) sprite_index= rtsprite;
    with(mkid) image_speed= 0.25;
    global.msg[0]= "* Let\\'s go!/%%";
    global.typer= 5;
    global.interact= 1;
    instance_create(0, 0, obj_dialoguer );
    con= 5;
}
if(!instance_exists(OBJ_WRITER ) && con == 5) {
    con= 6;
    global.interact= 0;
    with(mkid) sprite_index= rsprite;
    x= 60;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    con= 8;
    mkid.follow= 0;
    mkid.hspeed= 8;
    mkid.sprite_index= mkid.rsprite;
    mkid.image_speed= 0.5;
    alarm[4]= 30;
}
if(con == 9) {
    with(mkid) instance_destroy();
    global.interact= 0;
    t= instance_create(xstart, ystart, obj_monsterkidtrigger3 );
    t.numero= 2;
    instance_destroy();
}

/* */
/*  */
