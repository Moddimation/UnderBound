myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Sorry..^1. UNDYNE^1, like^1, told&  us there was totally a&  human in the area./";
global.msg[1]= "* So^1, like^1, us Royal Guards are&  blocking off the elevators&  for now./";
global.msg[2]= "* Ngah^1! Even if the elevators&  aren\\'t working anyway^1, we\\'ll&  do our best^1, Ms. UNDYNE!/%%";
if(tt == 1) {
    global.msg[0]= "* Like^1, NO WAY you\\'re getting&  by us./";
    global.msg[1]= "* But^1, between you and me...&* I think you could go through&  that creepy lab over there./";
    global.msg[2]= "* Between you^1, me^1, and my&  bro here^1, I mean./";
    global.msg[3]= "* I tell him ALL my secrets./%%";
}
if(tt >= 2) {
    global.msg[0]= "* Hey^1!&* No loitering!/";
    global.msg[1]= "* Like^1, just kidding^1.&* I don\\'t care^1.&* Like^1, loiter your heart out./%%";
}
if(room == 181) {
    global.msg[0]= "* Oh^1, hey./";
    global.msg[1]= "* We\\'re^1, like^1, taking a rain&  check on that killing-you&  thing./";
    global.msg[2]= "* Like^1, don\\'t tell Undyne&  about this^1, OK?/%%";
    if(tt >= 1)
        global.msg[0]= "* You didn\\'t tell her^1, did&  you...?/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* Undyne told us that the&  Royal Guard is being disbanded./";
        global.msg[1]= "* Like^1, bummer..^1.&* Guess we\\'ll have to get&  used to Love and Peace./%%";
    }
}
tt++;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
