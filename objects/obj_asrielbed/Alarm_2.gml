if(global.plot >= 24 && jump < 5) {
    global.typer= 31;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msc= 0;
    global.msg[0]= "* " + global.charname + "^1, please.../";
    global.msg[1]= "* Wake up!/";
    global.msg[2]= "* You are the future&  of humans and&  monsters.../%%";
    if(global.flag[7] == 1) {
        global.typer= 5;
        global.msg[0]= "* (It felt strange to lie&  in the bed.)/";
        global.msg[1]= "* (It feels entirely too&  small for you now.)/%%";
    }
    obj_asriellamp.idealvolume[0]= 0;
    obj_asriellamp.idealvolume[1]= 0;
    instance_create(0, 0, obj_dialoguer );
    // obj_dialoguer
    with(779) depth= -999999;
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) depth= -9999999;
    }
    jump= 5;
}
if(jump == 5) alarm[2]= 2;
if(!instance_exists(obj_dialoguer )) {
    jump= 6;
    __background_set( e__BG.Visible, 1, 0 );
    __background_set( e__BG.Visible, 0, 1 );
    if(global.plot < 20) __background_set( e__BG.Visible, 2, 1 );
    global.facing= 3;
    obj_mainchara.x= 200;
    obj_mainchara.y= 104;
    global.hp= global.maxhp;
    if(instance_exists(obj_unfader )) {
        // obj_unfader
        with(149) instance_destroy();
    }
    instance_create(0, 0, obj_fader );
    obj_asriellamp.idealvolume[0]= 0;
    obj_asriellamp.idealvolume[1]= 1;
    if(global.flag[103] == 0 && global.plot < 20) {
        global.flag[103]= 1;
        instance_create(142, 132, obj_pie_pickup );
    }
    alarm[3]= 60;
}


/*  */
