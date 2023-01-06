buffer--;
if(myinteract == 1 && buffer > 0) myinteract= 0;
if(myinteract == 1) {
    global.interact= 1;
    alarm[0]= 1;
    myinteract= 2;
}
if(myinteract == 0) sprite_index= spr_flattv_off ;
if(conversation == 2) {
    image_speed= 1;
    sprite_index= spr_flattv_on ;
    caster_loop(tv, 0.75, 1);
    conversation= 3;
    alarm[2]= 10;
}
if(conversation == 4) {
    if(instance_exists(obj_papyrusparent )) {
        scr_papface(0, 0);
        global.msg[1]= "\\\\E0OOH, IT\\'S MY&FAVORITE&GAME-SHOW!/";
        global.msg[2]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[3]= "* (It says " + chr(ord("\"")) + "STAY TUNED FOR&  A NEW PROGRAM - MTT." + chr(ord("\"")) + ")/";
        scr_papface(4, 1);
        global.msg[5]= "\\\\E1WHAT!!^1!&IT\\'S USUALLY&BETTER THAN THIS!/";
        global.msg[6]= "\\\\E2THIS IS JUST&A BAD EPISODE!!^1!&DON\\'T JUDGE ME!!!/%%";
    } else 
        global.msg[0]= "* (It says " + chr(ord("\"")) + "STAY TUNED FOR&  A NEW PROGRAM - MTT." + chr(ord("\"")) + ")/%%";
    if(read > 1)
        global.msg[0]= "* (It says " + chr(ord("\"")) + "STAY TUNED FOR&  A NEW PROGRAM - MTT." + chr(ord("\"")) + ")/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 5;
}
if(conversation == 5 && !instance_exists(OBJ_WRITER )) {
    read++;
    conversation= 0;
    myinteract= 0;
    global.interact= 0;
    if(buffer <= 0) snd_play(snd_chug );
    buffer= 5;
    sprite_index= spr_flattv_off ;
    caster_stop(tv);
    caster_resume(global.currentsong);
}

/* */
/*  */
