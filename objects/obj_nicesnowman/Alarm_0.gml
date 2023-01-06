myinteract= 3;
global.msc= 226;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.flag[7] == 1) {
    global.msc= 0;
    global.msg[0]= "* Oh^1?&* About that piece I gave you?/";
    global.msg[1]= "* .../";
    global.msg[2]= "* ... I never gave you anything./%%";
    scr_itemcheck(16);
    scr_storagecheck(16);
    if(global.flag[56] == 1 || global.flag[56] == 2) {
        global.msg[0]= "* Ah..^1. I can feel that piece&  of me has been well taken&  care of./";
        global.msg[1]= "* Thank you./";
        global.msg[1]= "* Hmmm...^1?&* The barrier\\'s opened up?/";
        global.msg[2]= "* Hmmm..^1.&* Then^1, if it\\'s not too much&  to ask.../";
        global.msg[3]= "* ... could you take that&  piece of me to the surface?/";
        global.msg[4]= "* I would really appreciate&  it./%%";
    }
    if((global.flag[56] == 1 || global.flag[56] == 2) && haveit == 0 && haveit2 == 0) {
        global.msg[0]= "* So^1, did you take that&  piece of me very far&  away...?/";
        global.msg[1]= "* .../";
        global.msg[2]= "* Where\\'s the piece!?/%%";
    }
    if(global.flag[56] == 4 || global.flag[56] == 5) {
        global.msg[0]= "* Ah^1, the barrier\\'s open...?/";
        global.msg[1]= "* You know I cannot move^1.&* Why are you telling me^1?&* To mock me?/";
        global.msg[2]= "* Everyone may think you are a&  good person^1, but this snowman&  knows the truth./";
        global.msg[3]= "* Someday^1, your friends will&  realize your heart is as&  cold as my butt./%%";
    }
}
if(scr_murderlv() >= 2) {
    global.msc= 0;
    noroom= 0;
    if(global.flag[253] <= 2) scr_itemget(16);
    if(noroom == 1)
        global.msg[0]= "* (You\\'re carrying too many&  items.)/%%";
    else  {
        if(global.flag[253] == 0) {
            global.msg[0]= "* Hello^1.&* I am a snowman^1.&* I cannot move./";
            global.msg[1]= "* Traveller^1, if you could.../";
            global.msg[2]= "* (You got the Snowman Piece.)/%%";
        }
        if(global.flag[253] == 1) {
            global.msg[0]= "* Oh me^1, oh my^1.&* What are you doing?/";
            global.msg[1]= "* Soon there won\\'t be any&  of me left.../";
            global.msg[2]= "* (You got the Snowman Piece.)/%%";
        }
        if(global.flag[253] == 2) {
            global.msg[0]= "* Stop..^1.&* Please.../";
            global.msg[1]= "* (You got the Snowman Piece.)/%%";
        }
        if(global.flag[253] >= 3)
            global.msg[0]= "* (A useless pile of snow.)/%%";
        dt= 1;
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
