scr_depth(0, 0, 0, 0, 0);
if(myinteract == 1) {
    if(con == 0) {
        global.interact= 1;
        myinteract= 3;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.faceemotion= 0;
        skip= 0;
        global.msg[0]= "* Art Club: Meet here!&* Next meeting:&* October 10th 8PM/%%";
        if(murd == 1) {
            skip= 1;
            global.msg[0]= "* (Art club is cancelled!)/%%";
        }
        if(global.flag[281] == 1) {
            global.msg[0]= "* (Art is dead.)/%%";
            skip= 1;
        }
        if(global.flag[281] == 2) {
            global.msg[0]= "* Let\\'s meet again someday!/%%";
            skip= 1;
        }
        if(global.flag[7] == 1 || global.flag[8] == 1) {
            global.msg[0]= "* Who knows what lies in the&  future for Art Club!?/%%";
            skip= 1;
        }
        if(skip == 0 && global.plot > 164 && current_month == 10 && current_day == 10 && (current_hour == 8 || current_hour == 20)) {
            con= 1;
            myinteract= -1;
        }
        mydialoguer= instance_create(0, 0, obj_dialoguer );
        talkedto++;
    } else  myinteract= 0;
}
if(myinteract == 3 && !instance_exists(mydialoguer)) {
    global.interact= 0;
    myinteract= 0;
}
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    global.facing= 0;
    snd_play(snd_escaped );
    con= 2;
    alarm[4]= 60;
    global.interact= 1;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    global.facing= 0;
    global.interact= 1;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Ahhhh!!^1!&* I\\'m late!!^1!&* I\\'m late!!!/";
    global.msg[1]= "* I\\'m so sorry!!!/%%";
    scr_regulartext();
    con= 4;
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_arrow );
    sory= scr_marker(obj_mainchara.x - 10, 240, 1670);
    sory.vspeed= -5;
    sory.depth= 1000;
    sory.image_speed= 0.5;
    con= 5;
}
if(con == 5 && sory.y <= obj_mainchara.y + 15) {
    with(sory) instance_destroy();
    snd_play(snd_impact );
    dk= scr_marker(-5, -5, 996);
    dk.image_xscale= 300;
    dk.image_yscale= 300;
    con= 6;
    alarm[4]= 40;
}
if(con == 7) {
    with(dk) instance_destroy();
    global.battlegroup= 140;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    con= 8;
    alarm[4]= 31;
}
if(con == 9) {
    myinteract= 0;
    global.mercy= 0;
    global.interact= 0;
    con= 0;
    alarm[4]= -1;
}


/*  */
