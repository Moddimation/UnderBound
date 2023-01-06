myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Everything\\'s so dirty..^1.&* If I could erase everything^1,&  I would./";
global.msg[1]= "* Ohhhh^1.&* Don\\'t get the wrong idea^1.&* I don\\'t want anyone to die./";
global.msg[2]= "* People turn to dust when&  they die^1, and that\\'s hard&  to clean up.../%%";
if(talkedto > 0) global.msg[0]= "* Don\\'t turn to dust./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* The surface intimidates me./";
    global.msg[1]= "* The entire outer layer of the&  Earth is made of dirt./%%";
}
if(room == 113) {
    global.msg[0]= "* I clean off all of the&  trash and arrange it into&  symmetrical piles./";
    global.msg[1]= "* It\\'s hard work^1, but somebody&  has to do it./%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* Don\\'t drag your dirty feet&  in here^1.&* I just cleaned this trash!/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
