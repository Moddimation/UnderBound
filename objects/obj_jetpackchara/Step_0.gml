if(won == 0) {
    if(keyboard_check(37) && x > 330) x-= 4;
    if(keyboard_check(39) && x < 620) x+= 4;
}
if(won == 0 && obj_counterscroller.fakev < 15)
    obj_counterscroller.fakev+= 0.25;
myfakev= obj_counterscroller.fakev;
dist-= myfakev;
if(dist < 200 || timertime < 90) eligible= 0;
if(con == 1 && mett.x < xx + 150) con= 2;
if(dist < 600 && instance_exists(mett)) mett.alarm[1]= -1;
if(con == 2) {
    mett.overmode= 1;
    if(dist / maxdist < 0.75) mett.movemode= 1;
    if(dist / maxdist < 0.35) mett.overmode= 2;
}
if(con == 10) {
    mett.overmode= 0;
    mett.movemode= 0;
    mett.mode= 4;
    mett.con= 9;
    wrong= 0;
    if(mett.y < 200) mett.y+= 5;
    if(mett.x < 580) {
        mett.x+= 4;
        wrong= 1;
    }
    if(mett.x > 590) {
        mett.x-= 4;
        wrong= 1;
    }
    if(wrong == 0) {
        // obj_cookhud
        with(1184) finished= 1;
        con= 11;
        obj_counterscroller.seg= -98;
        obj_counterscroller.on= 1;
    }
}
if(con == 11) {
    if(mett.y < 200) mett.y+= 5;
    if(mett.x < 580) mett.x+= 4;
    if(obj_counterscroller.fakev > 2)
        obj_counterscroller.fakev--;
    else  {
        con= 12;
        instance_create(0, 0, obj_musfadeout );
    }
}
if(con == 12) {
    if(obj_counterscroller.seg <= -104) {
        obj_counterscroller.fakev= 0;
        con= 13;
    }
    if(mett.y < 200) mett.y+= 5;
    if(mett.x < 580) mett.x+= 4;
}
if(con == 13) {
    remx= obj_mainchara.x;
    remy= obj_mainchara.y;
    obj_mainchara.x= 400;
    obj_mainchara.y= 100;
    global.typer= 27;
    global.msc= 0;
    global.facechoice= 0;
    global.msg[0]= "* MY MY./";
    global.msg[1]= "* IT SEEMS YOU\\'VE BESTED ME./";
    global.msg[2]= "* BUT ONLY BECAUSE YOU HAD&  THE HELP OF THE BRILLIANT&  DOCTOR ALPHYS!/";
    global.msg[3]= "* OH^1, I LOATHE TO THINK OF&  WHAT WOULD HAVE HAPPENED&  TO YOU WITHOUT HER!!!/";
    global.msg[4]= "* WELL^1, TOODLES!!/%%";
    ggg= instance_create(0, 0, obj_dialoguer );
    ggg.side= 0;
    con= 14;
}
if(con == 14 && !instance_exists(OBJ_WRITER )) {
    mett.x+= 8;
    if(mett.x > 800) con= 15;
}
if(con == 15) {
    mett.x-= 8;
    if(mett.x < xx + 240) con= 16;
}
if(con == 16) {
    global.msg[0]= "* OH YES^1!&* ABOUT THE SUBSTITUTION.../";
    global.msg[1]= "* HAVEN\\'T YOU EVER SEEN&  A COOKING SHOW BEFORE?/";
    global.msg[2]= "* I ALREADY BAKED THE CAKE&  AHEAD OF TIME!!!!!&* SO FORGET IT!!!/%%";
    ggg= instance_create(0, 0, obj_dialoguer );
    ggg.side= 0;
    con= 17;
}
if(con == 17 && !instance_exists(obj_dialoguer )) {
    mett.x+= 8;
    obj_counterscroller.fakev= -3;
    con= 18;
    alarm[4]= 60;
}
if(con == 18) {
    if(x < 467) x+= 3;
    if(x > 473) x-= 3;
    mett.x+= 8;
}
if(con == 19) {
    obj_counterscroller.fakev= 0;
    if(y < 367) y+= 3;
    else  y= 367;
    if(x < 467) x+= 4;
    if(x > 473) x-= 4;
    if(x >= 467 && x <= 473) x= 470;
    if(__view_get( e__VW.YView, 0 ) < 240) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (6) );
    else  __view_set( e__VW.YView, 0, 240 );
    if(__view_get( e__VW.YView, 0 ) == 240 && x == 470 && y == 367) {
        with(mett) instance_destroy();
        __view_set( e__VW.YView, 0, 240 );
        con= 20;
    }
}
if(con == 20) {
    con= 21;
    obj_cookshowevent.con= 70;
}
if(con == 30) {
    if(obj_counterscroller.fakev < 0)
        obj_counterscroller.fakev+= 0.25;
    if(obj_counterscroller.fakev > 0)
        obj_counterscroller.fakev-= 0.25;
    if(abs(obj_counterscroller.fakev) < 0.5) obj_counterscroller.fakev= 0;
    mett.overmode= 0;
    mett.movemode= 0;
    mett.alarm[1]= -1;
    if(mett.y < 200) mett.y+= 5;
    if(mett.x < 580) mett.x+= 4;
    if(abs(obj_counterscroller.fakev) < 0.5) {
        // obj_cookhud
        with(1184) finished= 1;
        instance_create(0, 0, obj_musfadeout );
        obj_counterscroller.fakev= 0;
        con= 31;
        alarm[4]= 15;
    }
}
if(con == 32) {
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Wh-what!^1?&* Wh-why aren\\'t you&  m-m-moving?/";
    global.msg[3]= "* N-no...^1!&* I must not have&  added enough fuel!/";
    global.msg[4]= "\\\\E8* D-darnit..^1.&* I\\'m sorry.../";
    global.msg[5]= "* Even when it\\'s&  something like&  this^1, I.../";
    global.msg[6]= "* I still...^1!&* I still.../%%";
    scr_regulartext();
    snd_play(snd_phone );
    con= 33;
}
if(con == 33) {
    if(mett.y < 240) mett.y+= 5;
    if(mett.x < 580) mett.x+= 4;
}
if(con == 33 && !instance_exists(OBJ_WRITER )) {
    global.flag[377]= 1;
    global.typer= 27;
    global.facechoice= 0;
    global.msg[0]= "* OH NO^1, WOULD YOU LOOK AT&  THAT!/";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* What?/";
    global.msg[3]= "\\\\TS \\\\E0 \\\\F0 \\\\TM %";
    global.msg[4]= "* I FORGOT!&* RIGHT ABOUT NOW IS WHEN&  WE HAVE OUR COMMERCIAL BREAK!/";
    global.msg[5]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[6]= "* Wh..^1.&* What are you...%";
    global.msg[7]= "\\\\TS \\\\E0 \\\\F0 \\\\TM %";
    global.msg[8]= "* UNFORTUNATELY, THAT MEANS&  NO ONE IS WATCHING THIS&  RIGHT NOW./";
    global.msg[9]= "* I\\'M NOT GOING TO DESTROY&  YOU WITHOUT A LIVE&  TELEVISION AUDIENCE!!/";
    global.msg[10]= "* LOOKS LIKE YOU\\'VE FOILED ME&  ONCE AGAIN, THANKS TO THE&  BRILLIANT DR. ALPHYS!!!/";
    global.msg[11]= "* UNTIL NEXT TIME, BEAUTIFUL!/";
    global.msg[12]= "* TOODLES!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 34;
}
if(con == 34 && instance_exists(OBJ_WRITER ) && mett.y < 240)
    mett.y+= 5;
if(con == 34 && !instance_exists(OBJ_WRITER )) {
    with(mett) vspeed= -4;
    con= 17;
}
if(dist <= 1 && timertime >= 0 && won == 0) {
    won= 1;
    con= 10;
}
if(dist > 1 && timertime <= 0 && won == 0) {
    won= 2;
    con= 30;
}


/*  */
