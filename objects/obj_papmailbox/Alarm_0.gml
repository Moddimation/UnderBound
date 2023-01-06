myinteract= 3;
global.msc= 565;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrus_room ) || instance_exists(obj_papyrus_houseoutside )) {
    global.facechoice= 4;
    global.typer= 19;
    global.faceemotion= 0;
    global.msc= 0;
    global.msg[0]= "HOW NICE OF YOU&TO CHECK MY MAIL&FOR ME./";
    global.msg[1]= "\\\\E3WAIT^1, NO^1.&THAT\\'S VERY&STRANGE./%%";
    if(talkedto > 0) {
        global.msg[0]= "\\\\E3STOP LOOKING IN&MY EMPTY&MAILBOX./";
        global.msg[1]= "\\\\E0THAT\\'S MY&EMPTINESS^1, NOT&YOURS./%%";
    }
    if(instance_exists(obj_undyne_friendc )) {
        h= 0;
        scr_itemcheck(56);
        if(haveit == 1) h= 1;
        scr_itemcheck(57);
        if(haveit == 1) h= 1;
        if(h == 1) {
            global.facechoice= 5;
            global.typer= 37;
            global.faceemotion= 1;
            global.msg[0]= "* Oh my god^1!&* The letter\\'s not&  to PAPYRUS!!!/";
            scr_papface(1, 1);
            global.msg[2]= "YEAH^1, UNDYNE\\'S&GOT A POINT!/";
            global.msg[3]= "\\\\E0WHY DIDN\\'T SHE&WRITE A LETTER&TO ME INSTEAD?/";
            scr_undface(4, 1);
            global.msg[5]= "* Fine^1, you want a&  letter!?/";
            global.msg[6]= "* I\\'ll give you a&  letter!!!/";
            global.msg[7]= "\\\\E6* YOU GET AN " + chr(ord("\"")) + "F" + chr(ord("\"")) + "!/";
            scr_papface(8, 5);
            global.msg[9]= "OH NO!!!/";
            global.msg[10]= "\\\\E3WHAT\\'S THE F&FOR?/";
            scr_undface(11, 9);
            global.msg[12]= "* Friendship!!!/%%";
        }
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
