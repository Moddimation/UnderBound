dingus++;
if(global.plot == 24 && dingus == 2) {
    instance_create(140, 50, obj_toroverworld3 );
    obj_toroverworld3.facing= 2;
    obj_toroverworld3.direction= 90;
}
if(conversation == 2 && !instance_exists(obj_dialoguer )) {
    alarm[1]= 20;
    global.flag[45]= 3;
    conversation= 3;
}
if(conversation == 9 && !instance_exists(obj_dialoguer ))
    global.interact= 0;
if(conversation == 6 && !instance_exists(obj_dialoguer )) {
    obj_toroverworld3.y+= 10;
    obj_toroverworld3.image_index= 0;
    obj_toroverworld3.dsprite= 1122;
    obj_toroverworld3.sprite_index= spr_toriel_hug ;
    obj_mainchara.visible= 0;
    obj_toroverworld3.image_speed= 0.2;
    alarm[3]= 120;
    conversation= 7;
}
if(instance_exists(obj_toroverworld3 ) && conversation == 7.6 && obj_toroverworld3.path_position == 1) {
    alarm[5]= 30;
    conversation= 7.7;
}
if(conversation == 7.5 && !instance_exists(obj_dialoguer )) {
    // obj_toroverworld3
    with(861) path_start(path_torielwalkbasement3 , 3, 0, path_action_stop );
    conversation= 7.6;
}
if(conversation == 8 && !instance_exists(obj_dialoguer )) {
    global.seriousbattle= 0;
    global.interact= 0;
    // obj_toroverworld3
    with(861) instance_destroy();
    global.plot= 25;
    instance_destroy();
}
if(instance_exists(obj_toroverworld3 ) && conversation == 1) {
    global.interact= 1;
    myinteract= 3;
    global.typer= 4;
    global.facechoice= 1;
    global.faceemotion= 7;
    global.msc= 0;
    global.msg[0]= "* You want to leave&  so badly?/";
    global.msg[1]= "\\\\E6* Hmph./";
    global.msg[2]= "* You are just like&  the others./";
    global.msg[3]= "\\\\E7* There is only one&  solution to this./";
    global.msg[4]= "* Prove your../";
    global.msg[5]= "* Prove to me you&  are strong enough&  to survive./%%";
    ini_open("undertale.ini");
    TK= ini_read_real("Toriel", "TK", 0);
    ini_close();
    if(TK > 0) {
        global.msg[5]= "* Prove to me you&  are strong enough&  to survive!/";
        global.msg[6]= "\\\\E6* ... wait./";
        global.msg[7]= "* ... why are you looking&  at me like that?/";
        global.msg[8]= "* Like you have seen&  a ghost./";
        global.msg[9]= "\\\\E7* Do you know something&  that I do not?/";
        global.msg[10]= "* No...&* That is impossible./%%";
    }
    if(global.flag[202] > 11 && global.flag[203] > 11) {
        global.msg[5]= "* Prove to me that you&  are.../";
        global.msg[6]= "\\\\E1* Hey^1, let me finish%%";
    }
    if(global.flag[45] == 3) {
        global.msg[0]= "* Already?/";
        global.msg[1]= "* What will it take&  for you to learn&  your lesson?/%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}

/* */
/*  */
