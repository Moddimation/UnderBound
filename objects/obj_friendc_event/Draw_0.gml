if(con == 1.1) {
    global.msc= 0;
    global.typer= 91;
    SCR_TEXTTYPE(global.typer);
    global.msg[0]= "  Frisk!/";
    global.msg[1]= "  This is all just&  a bad dream...!/";
    global.msg[2]= "  Please^1, wake up...!/%%";
    wrwr= instance_create(40, 140, OBJ_WRITER );
    wrwr.depth= -12000;
    con= 1.9;
    obj_mainchara.x= 140;
    obj_mainchara.y= 125;
    global.facing= 3;
    obj_mainchara.visible= 0;
    mc= scr_marker(obj_mainchara.x, obj_mainchara.y, 1047);
    mc.visible= 0;
}
if(con == 1.9 && instance_exists(OBJ_WRITER )) {
    obj_mainchara.x= 140;
    obj_mainchara.y= 125;
    global.facing= 0;
    obj_mainchara.visible= 0;
    global.interact= 1;
}
if(con == 1.9 && !instance_exists(OBJ_WRITER )) {
    con= 1.8;
    alarm[4]= 70;
}
if(con == 2.8) con= 2;
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    mc.visible= 1;
    caster_loop(global.currentsong, 1, 0.95);
    d_blk= 2;
    con= 4;
    alarm[4]= 130;
}
if(con == 5) {
    obj_mainchara.visible= 1;
    with(mc) instance_destroy();
    con= 6;
    alarm[4]= 60;
}
if(con == 7) {
    global.facing= 2;
    con= 8;
    alarm[4]= 50;
}
if(con == 9) {
    global.typer= 4;
    global.msc= 0;
    global.facechoice= 1;
    global.faceemotion= 0;
    global.msg[0]= "* Oh^1!&* You are awake^1!&* Thank goodness!/";
    scr_alface(1, 9);
    global.msg[2]= "* W-we were so&  worried...!/";
    global.msg[3]= "* It felt like you&  were out forever!/";
    scr_undface(4, 9);
    global.msg[5]= "* Yeah^1! Any longer and&  I would have freaked&  out!/";
    global.msg[6]= "\\\\E2* Tell us next time&  you decide to take&  a nap^1, okay!?/";
    scr_sansface(7, 1);
    global.msg[8]= "* yeah^1.&* you made papyrus cry&  like a baby./";
    scr_papface(9, 1);
    global.msg[10]= "WHAT!^1!&I DIDN\\'T CRY!!^1!&I DON\\'T CRY!!/";
    global.msg[11]= "\\\\E3I JUST..^1.&CAUGHT SOMETHING&IN MY EYE./";
    scr_sansface(12, 1);
    global.msg[13]= "* what did you catch?/";
    scr_papface(14, 8);
    global.msg[15]= "TEARS!!!/";
    scr_asgface(16, 0);
    global.msg[17]= "* Now^1, now./";
    global.msg[18]= "* The important part&  is that Frisk is&  all right./";
    global.msg[19]= "* Here^1, Frisk^1.&* Why not drink some&  tea?/";
    global.msg[20]= "* It\\'ll make you feel&  better./";
    scr_torface(21, 1);
    global.msg[22]= "* Errr..^1.&* How about we give&  them space^1, first?/";
    global.msg[23]= "\\\\E2* They must be very&  exhausted./";
    global.msg[24]= "\\\\E8* Though^1, from what^1,&  I am not certain./";
    global.msg[25]= "\\\\E1* Frisk..^1.&* We do not remember&  exactly what happened./";
    global.msg[26]= "\\\\E1* There was a flower..^1.&* And then^1, everything&  went white./";
    global.msg[27]= "\\\\E0* But now the barrier&  is gone./";
    global.msg[28]= "* When you are ready^1,&  we will all return&  to the surface./";
    global.msg[29]= "* It seems the door to&  the east will lead&  us there now./";
    global.msg[30]= "\\\\E2* But before then.../";
    global.msg[31]= "\\\\E0* Perhaps you might&  want to take a&  walk?/";
    global.msg[32]= "* You can say goodbye&  to all of your&  wonderful friends./";
    global.msg[33]= "* Do as you wish^1.&* We will all wait&  for you here./%%";
    dd= instance_create(0, 0, obj_dialoguer );
    dd.side= 1;
    con= 10;
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    // obj_toriel_friendc
    with(1311) direction= 270;
    // obj_sans_friendc
    with(1312) direction= 270;
    // obj_asgore_friendc
    with(1316) direction= 270;
    // obj_alphys_friendc
    with(1315) direction= 270;
    global.interact= 0;
    global.flag[510]= 2;
    con= 11;
    global.filechoice= 0;
    scr_save();
}
if(d_blk == 1) {
    draw_set_color(0);
    draw_rectangle(-10, -10, 999, 999, 0);
}
if(d_blk == 2) {
    blk-= 0.01;
    draw_set_color(0);
    draw_set_alpha(blk);
    draw_rectangle(-10, -10, 999, 999, 0);
    if(blk <= 0) d_blk= 0;
    draw_set_alpha(1);
}


/*  */
