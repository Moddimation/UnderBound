b_buffer= 0;
if(myinteract == 1 && global.interact == 0 && tangible == 1 && con == 0) {
    global.interact= 1;
    con= 1;
    myinteract= 0;
}
if(con == 1) {
    // obj_mettnews_battleobj
    with(1225) b_buffer= 50;
    con= 2;
    alarm[4]= 33;
    global.flag[15]= 1;
    global.battlegroup= 69 + bombtype;
    instance_create(0, 0, obj_battler );
}
if(con == 3) {
    con= 4;
    alarm[4]= 12;
}
if(con == 4) {
    visible= 0;
    global.interact= 1;
}
if(con == 5) {
    con= 90;
    global.flag[15]= 0;
    global.flag[395]++;
    anti= 0;
    if(instance_exists(obj_doomtimer ) && obj_doomtimer.dx >= 120)
        anti= 1;
    if(obj_mettnewsevent.failure == 1) anti= 1;
    if(global.flag[395] == 1 && anti == 0) con= 7;
    if(global.flag[395] == 5 && anti == 0) con= 60;
    if(global.flag[395] == 6) obj_mettnewsevent.con= 160;
}
if(con == 7) {
    global.facechoice= 6;
    global.faceemotion= 6;
    global.typer= 47;
    global.msg[0]= "* Error./%%";
    global.msc= 0;
    if(bombtype == 1 || bombtype == 2 || bombtype == 4) {
        global.msg[0]= "* Great job^1!&* Keep heading around the&  room!/";
        global.msg[1]= "* Try to go for the&  one in the bottom-&  left next!/%%";
    }
    if(bombtype == 3) {
        global.msg[0]= "* Great job^1!&* Keep heading around the&  room!/";
        global.msg[1]= "* Try to go for the&  one in the top-&  right next!/%%";
    }
    if(bombtype == 5)
        global.msg[0]= "* Great job^1!&* Head to the left&  next!/%%";
    if(bombtype == 6)
        global.msg[0]= "* Great job^1!&* Head to the right&  next!/%%";
    if(global.flag[288] == 1) {
        global.faceemotion= 1;
        global.msg[0]= "* You couldn\\'t even&  get one bomb...!?/%%";
    }
    con= 90;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 60) {
    obj_mettnews_battleobj.watercancel= 1;
    global.facechoice= 6;
    global.faceemotion= 6;
    global.typer= 47;
    ex= 0;
    if(ex == 0) global.msc= 0;
    if(instance_exists(obj_mettnewsevent.newdog) && bombtype != 1)
        ex= 1;
    if(instance_exists(obj_mettnewsevent.newwater) && bombtype != 2)
        ex= 2;
    if(instance_exists(obj_mettnewsevent.newscript) && bombtype != 3)
        ex= 3;
    if(instance_exists(obj_mettnewsevent.newbasketball) && bombtype != 4)
        ex= 4;
    if(instance_exists(obj_mettnewsevent.newpresent) && bombtype != 5)
        ex= 5;
    if(instance_exists(obj_mettnewsevent.newgame) && bombtype != 6)
        ex= 6;
    global.msg[0]= "* Error,/%%";
    if(ex == 1)
        global.msg[0]= "* Great job^1!&* Head for the center^1!&* There\\'s one left there!/%%";
    if(ex == 2) {
        global.msg[0]= "* Great job^1!&* Head for the center!/";
        global.msg[1]= "* I\\'m using^1, uh^1, EM fields&  to trap the glass of&  water there!/%%";
    }
    if(ex == 3)
        global.msg[0]= "* Great job^1!&* There\\'s only one left&  in the bottom-right!/%%";
    if(ex == 4)
        global.msg[0]= "* Great job^1!&* There\\'s only one left&  at the top!/%%";
    if(ex == 5)
        global.msg[0]= "* Great job^1!&* There\\'s only one left&  at the top-right!/%%";
    if(ex == 6)
        global.msg[0]= "* Great job^1!&* There\\'s only one left&  at the bottom-left!/%%";
    if(global.flag[288] == 1) {
        global.faceemotion= 1;
        global.msg[0]= "* It\\'s..^1. it\\'s.../%%";
    }
    con= 90;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 90 && !instance_exists(OBJ_WRITER )) {
    // obj_mettnews_battleobj
    with(1225) b_buffer= 6;
    global.interact= 0;
    instance_destroy();
}
if(bombtype == 2) {
    if(cc == 0) {
        cc= 1;
        path_start(path_waterglass , 8, 1, path_action_stop );
    }
    if(watercancel == 1) {
        path_end();
        if(distance_to_point(360, 300) > 20) move_towards_point(360, 300, 5);
        else  speed= 0;
    }
}
if(bombtype == 3) {
    if(cc == 0) {
        hspeed= 5;
        cc= 1;
    }
    if(x < xstart - 80) hspeed= 5;
    if(x > xstart) hspeed= -5;
}
if(bombtype == 4) {
    if(cc == 0) {
        cc= 1;
        hspeed= 6;
    }
    if(x < xstart - 80) hspeed= 5;
    if(x > xstart + 80) hspeed= -5;
    siner++;
    ypl= sin(siner / 4) * 6;
    y+= ypl;
    tangible= 1;
}

/* */
/*  */
