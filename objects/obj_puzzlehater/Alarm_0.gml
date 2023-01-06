myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Bahh!!^1!&* Nevermind!!/%%";
if(global.flag[280] == 1)
    global.msg[0]= "* So^1?&* What are you waiting for!?/%%";
if(global.flag[280] == 0 && global.flag[7] == 0) {
    global.msg[0]= "* Bah^1! Today\\'s monsters don\\'t&  appreciate what makes&  puzzles great!/";
    global.msg[1]= "* Nowadays " + chr(ord("\"")) + "puzzles" + chr(ord("\"")) + " are nothing&  but lasers and moving rocks.../";
    global.msg[2]= "* Bahh!!!/";
    global.msg[3]= "* There\\'s no ART in that&  actiony^1, mindless schlock^1!&* It\\'s just timing-based drivel!/";
    global.msg[4]= "* Give me something that&  challenges the deepest&  reaches of my mind.../";
    global.msg[5]= "* You^1!&* You\\'re young^1!&* You\\'ve still got hope!/";
    global.msg[6]= "* Geh heh heh...^1!&* Here..^1. try solving this&  block-pushing puzzle!/%%";
    global.flag[280]= 1;
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Geh^1?&* Who are you?/";
    global.msg[1]= "* Freedom^1? What^1? Bah^1!&* You\\'re pullin\\' my leg!/%%";
    if(global.flag[280] >= 1) {
        global.msg[0]= "* You again!^1?&* Bah^1! I don\\'t care about&  going free!/";
        global.msg[1]= "* .../";
        global.msg[2]= "* Do you think humans could&  appreciate the details&  of classic puzzles...?/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
