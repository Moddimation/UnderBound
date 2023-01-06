myinteract= 4;
global.msc= 15;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.hp < global.maxhp) global.hp= global.maxhp;
global.en= global.maxen;
snd_play(snd_power );
offroom= 0;
if(room == 219) offroom= 1;
if(room == 235) offroom= 1;
if(room == 232) offroom= 1;
if(room == 236) offroom= 1;
if(room == 231) offroom= 1;
if(room == 216) offroom= 1;
if(room == 246) offroom= 1;
if(room == 251) offroom= 1;
if(scr_murderlv() >= 2 && global.flag[27] == 0 && (room == 46 || room == 56 || room == 61 || room == 68) && global.flag[27] == 0) {
    global.msc= 0;
    pop= 16 - global.flag[203];
    if(pop < 0) pop= 0;
    if(scr_murderlv() >= 2)
        global.msg[0]= "\\\\R* " + string(pop) + " left./%%";
    if(scr_murderlv() == 5) global.msg[0]= "\\\\R* That comedian.../%%";
    if(global.flag[57] == 2 && pop <= 0)
        global.msg[0]= "* Determination./%%";
    if(pop <= 0 && global.flag[57] != 2)
        global.msg[0]= "* The comedian got away^1.&* Failure./%%";
}
if(scr_murderlv() >= 8 && global.flag[27] == 0 && (room == 83 || room == 86 || room == 94 || room == 110 || room == 114 || room == 116 || room == 134 || room == 131 || room == 128) && global.flag[27] == 0) {
    global.msc= 0;
    pop= 18 - global.flag[204];
    if(pop < 0) pop= 0;
    if(scr_murderlv() >= 8)
        global.msg[0]= "\\\\R* " + string(pop) + " left./%%";
    if(pop <= 0) global.msg[0]= "* Determination./%%";
}
if(scr_murderlv() >= 12 && global.flag[27] == 0 && (room == 139 || room == 145 || room == 155 || room == 164 || room == 176 || room == 183 || room == 196 || room == 210) && global.flag[27] == 0) {
    global.msc= 0;
    pop= 40 - global.flag[205];
    if(pop < 0) pop= 0;
    if(scr_murderlv() >= 12)
        global.msg[0]= "\\\\R* " + string(pop) + " left./%%";
    if(pop <= 0) global.msg[0]= "* Determination./%%";
}
if(scr_murderlv() >= 16) {
    global.msc= 0;
    global.msg[0]= "* Determination./%%";
}
if(offroom == 0) mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
