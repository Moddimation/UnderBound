myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I\\'m visiting Waterfall&  from the city./";
global.msg[1]= "* Synchronicity...^1?&* My neighbor\\'s daughter looks&  about your age./";
global.msg[2]= "\\\\W* Her name is " + chr(ord("\"")) + "\\\\YSuzy\\\\W.^1" + chr(ord("\"")) + "&* I feel like you two should&  be friends./";
global.msg[3]= "* You have..^1.&* A neighbor\\'s blessing!!!/%%";
if(talkedto > 0) {
    global.msg[0]= "* Not knowing where I live&  is no issue^1.&* Fate finds a way./";
    global.msg[1]= "* In life\\'s grand scheme^1, she&  might be why you came here&  in the first place.../%%";
}
if(global.flag[7] == 0) global.flag[279]= 1;
if(global.flag[350] == 1) {
    global.msg[0]= "* I sense a disturbance in&  the nearby aura.../";
    global.msg[1]= "* I think you should leave&  that girl alone./%%";
}
if(global.flag[7] == 1) {
    if(global.flag[279] == 1) {
        global.msg[0]= "* So you never met my&  neighbor\\'s daughter./";
        global.msg[1]= "* Don\\'t despair^1.&* This world has infinite&  opportunities./";
        global.msg[2]= "* But there\\'s a limit to the&  things you can do today^1.&* Accepting this is healthy./";
        global.msg[3]= "* Take my neighbor\\'s blessing^1!&* And consider this blessing&  for anything you like!/%%";
    }
    if(global.flag[279] == 0) {
        global.msg[0]= "* I wanted to tell you about&  my neighbor\\'s daughter./";
        global.msg[1]= "* But you walked right by me&  before I could tell you./";
        global.msg[2]= "* Fate has decided that I&  should not tell you./%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
