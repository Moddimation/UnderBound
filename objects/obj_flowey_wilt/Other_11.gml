obj_borderparent.visible= 0;
writing= 1;
if(con == 12) {
    caster_free(wind);
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 70;
    writing= 0;
    global.msg[0]= "\\\\M1I just can\\'t understand.../%%";
    instance_create(x - 50, y - 40, OBJ_WRITER );
    con= 16;
}
if(con == 11) {
    caster_set_volume(wind, 0.25);
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\M1I can\\'t understand!/%%";
    instance_create(x - 50, y - 40, OBJ_WRITER );
    con= 12;
}
if(con == 10) {
    caster_set_volume(wind, 0.5);
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\M1I can\\'t understand./%%";
    instance_create(x - 50, y - 40, OBJ_WRITER );
    con= 11;
}
if(con == 9) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\M1... why are you being.../";
    global.msg[1]= "\\\\M1... so nice to me?/%%";
    instance_create(x - 60, y - 50, OBJ_WRITER );
    con= 10;
}
if(con == 8) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\M1... why?/%%";
    instance_create(x - 20, y - 30, OBJ_WRITER );
    con= 9;
}
if(con == 7) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\M1...?/%%";
    instance_create(x - 20, y - 30, OBJ_WRITER );
    con= 8;
}
if(con == 6) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 69;
    global.msg[0]= "\\\\M1.../%%";
    instance_create(x - 20, y - 30, OBJ_WRITER );
    con= 7;
}
if(con == 5) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 69;
    global.msg[0]= "\\\\M1I\\'ll kill everyone you love./%%";
    instance_create(x - 50, y - 40, OBJ_WRITER );
    con= 6;
}
if(con == 4) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 69;
    global.msg[0]= "\\\\M1I\\'ll kill everyone./%%";
    instance_create(x - 50, y - 40, OBJ_WRITER );
    con= 5;
}
if(con == 3) {
    global.flag[20]= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 69;
    global.msg[0]= "I\\'ll kill you./%%";
    instance_create(x - 40, y - 40, OBJ_WRITER );
    con= 4;
}
if(con == 2) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 69;
    global.msg[0]= "\\\\M1If you let me live.../";
    global.msg[1]= "\\\\M1I\\'ll come back./%%";
    instance_create(x - 40, y - 50, OBJ_WRITER );
    con= 3;
}
if(con == 1) {
    global.faceemotion= 0;
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\M1Sparing me won\\'t change&anything./";
    global.msg[1]= "\\\\M1Killing me is the only&way to end this./%%";
    instance_create(x - 60, y - 50, OBJ_WRITER );
    con= 2;
}
if(con == 0) {
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= ".../";
    global.msg[1]= "\\\\E1What are you doing?/";
    global.msg[2]= "\\\\E2Do you really think I\\'ve&learned anything from this?/";
    global.msg[3]= "\\\\E3No./%%";
    instance_create(x - 60, y - 50, OBJ_WRITER );
    con= 1;
}


/*  */
