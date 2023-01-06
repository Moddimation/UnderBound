myinteract= 3;
global.msc= 0;
global.typer= 60;
global.facechoice= 7;
global.faceemotion= 0;
if(global.flag[197] == 0) {
    global.msg[0]= "\\\\E0* Howdy^1, Frisk./";
    global.msg[1]= "\\\\E3* Sorry about almost&  trying to take&  your SOUL./";
    global.msg[2]= "\\\\E5* I feel very bad&  about it./";
    global.msg[3]= "\\\\E0* I hope we can&  still be pals./";
    scr_undface(4, 0);
    global.msg[5]= "\\\\E0* Hey^1, don\\'t worry&  about it^1, ASGORE./";
    global.msg[6]= "\\\\E2* I think everybody\\'s&  tried to kill Frisk&  at least once./";
    scr_asgface(7, 2);
    global.msg[8]= "\\\\E2* Oh..^1. I see!/";
    global.msg[9]= "\\\\E0* In that case^1, I\\'m&  not sorry^1, Frisk./";
    scr_undface(10, 6);
    global.msg[11]= "\\\\E6* ASGORE^1!&* That\\'s not what I&  meant!/%%";
}
if(global.flag[197] == 1) global.msc= 810;
if(global.flag[197] >= 2) {
    global.msg[0]= "\\\\E3* Oh^1, Frisk^1, if you\\'re&  not busy.../";
    global.msg[1]= "\\\\E0* On nice days^1, you&  should walk around and&  have a good time./";
    global.msg[2]= "\\\\E0* That\\'s important./%%";
}
global.flag[197]++;
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
