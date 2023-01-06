if(con == 0) {
    myinteract= 3;
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    skip= 0;
    global.msg[0]= "* Ark Club: Meet here!&* Next meeting:&* Tuesday Oct 10th 8PM/%%";
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
    if(global.flag[7] == 1) {
        global.msg[0]= "* Who knows what lies in the&  future for Art Club!?/%%";
        skip= 1;
    }
    if(skip == 0 && current_weekday == 2 && current_month == 10 && current_day == 10 && (current_hour == 8 || current_hour == 20))
        con= 1;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    talkedto++;
}


/*  */
