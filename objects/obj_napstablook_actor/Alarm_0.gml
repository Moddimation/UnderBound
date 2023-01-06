myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* i\\'m..^1. working on a mix cd..^1.&* make yourself at home...?/%%";
if(global.flag[36] > 0 && global.flag[94] == 0) {
    global.msg[0]= "* uh^1, do you wanna..^1.&* listen to some tunes.../";
    global.msg[1]= "* or something.../%%";
}
if(global.flag[458] == 1)
    global.msg[0]= "* uhhhh..^1.&* i\\'m gonna keep working&  on that mix cd./%%";
if(global.flag[350] == 1) {
    global.msg[0]= "* i\\'ve almost got a mix cd&  finished for my scary&  neighbor.../";
    global.msg[1]= "* it\\'s 74 minutes of people&  screaming their signature&  wrestling moves/";
    global.msg[2]= "* but they\\'re all autotuned^1.&* i hope she likes it/%%";
}
if(global.flag[93] == 9) global.msg[0]= "* oh............../%%";
if(global.flag[94] == 1)
    global.msg[0]= "* oh..^1. a classic spooktune..^1.&* they don\\'t make songs like&  this anymore.../%%";
if(global.flag[94] == 2)
    global.msg[0]= "* dang..^1. that ambience...&* it\\'s like my whole body&  is being spooked.../%%";
if(global.flag[94] == 3) {
    global.msg[0]= "* oh^1, this one..^1.&* once you learn the lyrics&  it\\'s hard not to sing along.../";
    global.msg[1]= "* ooo ooo ooo^2o&* ooo ooo ooo^2o&* oo oo oo^1o oo ooo/%%";
}
if(global.flag[7] == 1) {
    if(global.flag[199] == 0) {
        global.msg[0]= "* oh..............^1.&* mettaton.......^1.&* i\\'m a huge fan......../";
        global.msg[1]= "* ..... oh^1, hi/";
        if(global.flag[194] > 0) {
            global.msg[0]= "* what^1? undyne says hi^1?&* then tell her...^1.&* i say.........../";
            global.msg[1]= "* ......................&  ...... something cool./";
        }
        if(global.flag[36] > 0) {
            global.msg[2]= "* human...^1.&* i\\'ll never forget when you&  cheered me on/";
            global.msg[3]= "* when i was pretending to&  sleep.../";
            global.msg[4]= "* no one had ever had so&  much faith in my fake&  sleep..../";
        }
        if(global.flag[36] <= 0) {
            global.msg[2]= "* human..^1.&* i\\'ll never forget.../";
            global.msg[3]= "* that time you tried to&  destroy me..^1.&* but... you failed..../";
            global.msg[4]= "* sorry..^1.&* i messed it up/";
        }
        global.msg[5]= "* uh........^1.&* also.....^1.&* this is awkward... but/";
        global.msg[6]= "* what\\'s...^1.&  your name/";
        global.msg[7]= "* everyone seems to know&  it now^1, except me...../";
        global.msg[8]= "* seems like i\\'ve been&  missing out lately/";
        global.msg[9]= "* i was just sitting at home&  listening to tunes/";
        global.msg[10]= "* there was a flash of light&  outside my window/";
        global.msg[11]= "* i saw the snails on the farm&  disappear/";
        global.msg[12]= "* then i heard a knock at&  the door/";
        global.msg[13]= "* the flash of light wanted&  to come in...&* i closed the blinds.../";
        global.msg[14]= "* now everyone knows your&  name except for me/";
        global.msg[15]= "* " + chr(ord("\"")) + "frisk..." + chr(ord("\"")) + "&* ok^1, i wont forget it/%%";
    }
    if(global.flag[199] >= 1) {
        global.msg[0]= "* your name...?/";
        global.msg[1]= "* .../";
        global.msg[2]= "* " + chr(ord("\"")) + "frisk" + chr(ord("\"")) + "..^1.&* i didnt forget/";
        global.msg[3]= "* because i cried the&  letters into my hand/%%";
    }
    if(global.flag[199] >= 2) {
        global.msg[0]= "* oh no..^1.&* the letters in my hand&  are joining together/";
        global.msg[1]= "* oh no..^1.&* i\\'m going to forget your&  name.../";
        global.msg[2]= "* oh no..^1.&* i\\'m trying to cry more&  tears into my hand.../";
        global.msg[3]= "* oh no..^1.&* the tears are all forming&  a big pile.../";
        global.msg[4]= "* oh no..^1.&* your name\\'s getting really&  long/%%";
    }
    global.flag[199]++;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
