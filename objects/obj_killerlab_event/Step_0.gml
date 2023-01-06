if(con == 1) {
    con= 2;
    nowx= __view_get( e__VW.XView, 0 );
    obj_mainchara.cutscene= 1;
}
if(con == 2) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (3) );
    if(__view_get( e__VW.XView, 0 ) >= nowx + 78) {
        __view_set( e__VW.XView, 0, nowx + 78 );
        con= 2.1;
        alarm[4]= 30;
    }
}
if(con == 3.1) {
    global.facechoice= 0;
    global.faceemotion= 0;
    global.typer= 27;
    global.msc= 0;
    global.msg[0]= "* OH^1, THERE YOU ARE./";
    global.msg[1]= "\\\\M5* YOU UGLY LITTLE CREATURE^1.&* YOU\\'VE MADE QUITE A NAME&  FOR YOURSELF./";
    global.msg[2]= "\\\\M3* SUCH INFAMY...^1!&* I\\'M IMPRESSED./";
    global.msg[3]= "\\\\M4* OH^1. YES^1.&* IF YOU\\'RE LOOKING FOR ALPHYS^1,&  SHE\\'S NOT HERE./";
    global.msg[4]= "\\\\M0* WHILE YOU WERE BUSY DOING&  YOUR^1, AHEM^1, THING.../";
    global.msg[5]= "* SHE WAS RUNNING AROUND&  EVACUATING PEOPLE TO SAFETY./";
    global.msg[6]= "\\\\M4* NOW THEY\\'RE IN A PLACE&  WHERE YOU\\'LL NEVER GET TO&  THEM./";
    global.msg[7]= "\\\\M2* DECIDING NOT TO FIGHT YOU^1.&* MY MY^1, SHE REALLY IS THE&  ONLY SMART ONE^1, ISN\\'T SHE?/%%";
    con= 4;
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 0;
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    mc= scr_marker(obj_mainchara.x, obj_mainchara.y, 1045);
    mc.image_speed= 0.25;
    mc.hspeed= 2;
    obj_mainchara.visible= 0;
    con= 5;
}
if(con == 5 && mc.x >= mc.xstart + 20) {
    mc.hspeed= 0;
    mc.image_speed= 0;
    mc.image_index= 0;
    con= 6;
    alarm[4]= 45;
}
if(con == 7) {
    global.msg[0]= "\\\\M0* OH^1?&* HOW SASSY./";
    global.msg[1]= "\\\\M4* YOU\\'RE JUST ITCHING TO GET&  YOUR HANDS ON ME^1, AREN\\'T&  YOU?/";
    global.msg[2]= "\\\\M5* WELL..^1. T-O-O B-A-D!/";
    global.msg[3]= "\\\\M4* THIS WORLD NEEDS STARS MORE&  THAN IT NEEDS CORPSES!/";
    global.msg[4]= "\\\\M1* TOODLES!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 8;
}
if(con == 8 && !instance_exists(OBJ_WRITER )) {
    mett.hspeed= 8;
    con= 9;
    alarm[4]= 15;
}
if(con == 10) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (2) );
    if(__view_get( e__VW.XView, 0 ) <= nowx + 20) con= 11;
}
if(con == 11) {
    obj_mainchara.x= mc.x;
    obj_mainchara.visible= 1;
    obj_mainchara.cutscene= 0;
    with(mc) instance_destroy();
    global.interact= 0;
    global.flag[367]= 1;
    global.flag[368]= 1;
    global.flag[369]= 99;
    global.flag[371]= 1;
    global.flag[374]= 1;
    global.flag[375]= 1;
    global.flag[399]= 1;
    global.flag[400]= 1;
    global.flag[417]= 1;
    global.flag[418]= 1;
    global.plot= 160;
    con= 12;
    instance_destroy();
}


/*  */
