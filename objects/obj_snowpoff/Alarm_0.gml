myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(tt == 0) global.msg[0]= "* It\\'s a snow poff./%%";
if(tt == 1) global.msg[0]= "* And this..^1.&* Is a snow poff./%%";
if(tt == 2)
    global.msg[0]= "* This^1, however^1, is a snow poff./%%";
if(tt == 3)
    global.msg[0]= "* Surprisingly^1, it\\'s a snow poff./%%";
if(tt == 4) global.msg[0]= "* Snow poff.../%%";
if(tt == 5) global.msg[0]= "* Is it really a snow poff?/%%";
if(tt == 6) global.msg[0]= "* Behold^1!&* A snow poff./%%";
if(tt >= 7 && global.flag[65] == 1) {
    global.msg[0]= "* What\\'s this called?/%%";
    tt= 0;
}
if(tt >= 7 && global.flag[65] == 0) {
    global.msg[0]= "* Eh^1?&* There\\'s 30 G inside&  this..^1. what is this?/%%";
    global.gold+= 30;
    tt= 0;
    global.flag[65]= 1;
}
gg= tt;
obj_snowpoff.tt= tt + 1;
tt= gg;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
