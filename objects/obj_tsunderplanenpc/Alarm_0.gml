myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Hey^1!&* Watch where you stand^1,&  jerk!/";
global.msg[1]= "* Th-though^1, I guess if&  there\\'s nowhere else^1, you&  can stand closer.../%%";
if(talkedto > 0) global.msg[0]= "* Standing so spicey./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* A-ah..^1. H-human..^1.&* You\\'re leaving?/";
    global.msg[1]= "* I have..^1.&* Something to say to you./";
    global.msg[2]= "* Admittedly^1, I may have had&  limerent feelings for you&  before./";
    global.msg[3]= "* However^1, upon examining my&  own actions^1, I now&  realize.../";
    global.msg[4]= "* I did not love YOU./";
    global.msg[5]= "* I was merely infatuated&  with the CONCEPT of love./";
    global.msg[6]= "* The idea of romance^1, the&  concept of sharing affection&  with another.../";
    global.msg[7]= "* Through these desires^1, I&  built a false concept of&  you in my head./";
    global.msg[8]= "* Such a relationship would&  not have ended well./";
    global.msg[9]= "* In closing^1, I believe it&  is better that I chose to&  say nothing./";
    global.msg[10]= "* Y..^1. y-you i-idiot./%%";
    if(talkedto > 0) global.msg[0]= "* I\\'m not saying it again./%%";
}
if(room == 172) {
    global.msg[0]= "* H-hey^1, why do you keep&  following me!!!&* You jerk!!!/";
    global.msg[1]= "* Eeeeh^1?&* You\\'re walking in the&  opposite direction...?/";
    global.msg[2]= "* H-hey^1, you think you\\'re too&  good for me^1, huh...?/%%";
    if(talkedto > 0)
        global.msg[0]= "* N-not spicey enough for you^1,&  h-huh.../%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* I..^1. I\\'m thinking of going&  to the surface.../";
        global.msg[1]= "* Eeeeeh^1?&* You\\'re going to go there&  too?/";
        global.msg[2]= "* Idiot..^1.&* Quit following me!/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
