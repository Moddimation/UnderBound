if(conversation == 1) {
    fade= instance_create(0, 0, obj_musfadeout );
    fade.fadespeed= 0.5;
    global.currentsong= caster_load("music/papyrus.ogg");
    caster_loop(global.currentsong, 0.6, 1);
    myinteract= 3;
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.interact= 1;
    papyrus.sprite_index= papyrus.ltsprite;
    sans.sprite_index= sans.ltsprite;
    global.msg[0]= "HUMAN!!^1!&I HOPE YOU\\'RE&READY FOR.../%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}
if(conversation == 2 && !instance_exists(OBJ_WRITER )) {
    conversation= 3;
    xxblcon= instance_create(papyrus.x + 3, papyrus.y - 12, obj_cosmeticblcon );
    alarm[0]= 45;
}
if(conversation == 4) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.interact= 1;
    papyrus.sprite_index= spr_papyrus_lt_mad ;
    global.msg[0]= "SANS!^1!&WHERE\\'S THE&PUZZLE!!!/";
    scr_sansface(1, 0);
    global.msg[2]= "* it\\'s right there^1.&* on the ground./";
    global.msg[3]= "\\\\E1* trust me^1.&* there\\'s no way they can&  get past this one./%%";
    if(murder == 1)
        global.msg[3]= "\\\\E1* trust me^1.&* there\\'s no way they\\'ll&  skip this one./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 6;
}
if(conversation == 6 && !instance_exists(OBJ_WRITER )) {
    instance_create(10, 0, obj_puzzlewall2 );
    papyrus.sprite_index= papyrus.ltsprite;
    sans.sprite_index= sans.ltsprite;
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    conversation= 7;
    x= 220;
    global.interact= 0;
    solid= 0;
}
if(conversation == 8 && !instance_exists(OBJ_WRITER ))
    conversation= 22;
if(conversation == 22) {
    global.interact= 1;
    global.msc= 228;
    global.faceemotion= 1;
    global.facechoice= 4;
    global.typer= 19;
    if(murder == 1) {
        global.msc= 0;
        if(global.flag[254] == 1) {
            global.msg[0]= "WHAT THE HECK!!^1!&THEY DIDN\\'T SKIP&IT!?!?/";
            scr_sansface(1, 2);
            global.msg[2]= "* i\\'m tellin\\' ya^1.&* everyone likes word&  searches./";
            scr_papface(3, 4);
            global.msg[4]= "OH MY GOD!!!/";
            global.msg[5]= "I CAN\\'T WORK IN&THIS ENVIRONMENT!!/%%";
        } else  {
            global.msg[0]= "SANS!!^1!&THAT DID NOTHING!!!/";
            scr_sansface(1, 1);
            global.msg[2]= "* whoops./";
            global.msg[3]= "\\\\E2* knew i should have&  put down junior jumble&  instead./";
            scr_papface(4, 4);
            global.msg[5]= "WHAT?!^1?&JUNIOR JUMBLE!?/";
            global.msg[6]= "\\\\E0FINALLY^1, SOMETHING&WE CAN BOTH&AGREE ON./%%";
        }
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 23;
}
if(conversation == 23 && !instance_exists(OBJ_WRITER )) {
    papyrus.hspeed= 5;
    papyrus.fun= 1;
    papyrus.sprite_index= papyrus.rsprite;
    papyrus.image_speed= 0.25;
    hhh= instance_create(0, 0, obj_musfadeout );
    hhh.fadespeed= 0.05;
    alarm[1]= 30;
    conversation= 24;
}
if(conversation == 25) {
    global.currentsong= caster_load("music/snowy.ogg");
    caster_loop(global.currentsong, 1, 0.95);
    global.plot= 47;
    global.interact= 0;
    if(instance_exists(obj_puzzlewall2 )) {
        // obj_puzzlewall2
        with(1008) instance_destroy();
    }
    instance_create(sans.x, sans.y, obj_sans_room );
    with(sans) instance_destroy();
    with(papyrus) instance_destroy();
    instance_destroy();
}

/* */
/*  */
