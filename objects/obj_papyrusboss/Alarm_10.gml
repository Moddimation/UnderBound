if(bonetalk4 == 1) {
    global.msg[0]= " ALAS^1, POOR& PAPYRUS!/%%";
    if(murder == 1)
        global.msg[0]= " W-WELL^1, THAT\\'S& NOT WHAT I& EXPECTED.../%%";
    global.typer= 22;
    blcon= instance_create(x + 145, y + 52, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    bonetalk4= 2;
}
if(bonetalk4 == 3) {
    global.msg[0]= " WELL^1, AT LEAST I& STILL HAVE MY& HEAD!/%%";
    if(murder == 1) {
        global.msg[0]= " BUT.../";
        global.msg[1]= " ST..^1. STILL^1!& I BELIEVE IN& YOU!/";
        global.msg[2]= " YOU CAN DO A& LITTLE BETTER!/";
        global.msg[3]= " EVEN IF YOU& DON\\'T THINK SO!/";
        global.msg[4]= " I..^1.& I PROMISE.../%%";
    }
    global.typer= 22;
    blcon= instance_create(x + 145, y + 104, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    bonetalk4= 3.5;
}
alarm[10]= 2;
if(bonetalk4 == 5) {
    bonetalk4= 6;
    event_user(2);
    alarm[10]= -2;
}
if(bonetalk4 == 4) {
    global.xp+= 200;
    dh.c= 7;
    global.kills++;
    alarm[10]= 150;
    bonetalk4= 5;
}
if(bonetalk4 == 3.5 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    bonetalk4= 4;
    alarm[10]= 100;
}
if(bonetalk4 == 2.5) {
    dh.c= 5;
    bonetalk4= 3;
    alarm[10]= 80;
}
if(bonetalk4 == 2 && !instance_exists(OBJ_WRITER )) {
    dh.c= 4;
    db.c= 4;
    with(blcon) instance_destroy();
    alarm[10]= 30;
    bonetalk4= 2.5;
}
if(bonetalk4 == 0) {
    dh.c= 1;
    alarm[10]= 60;
    bonetalk4= 1;
}

/* */
/*  */
