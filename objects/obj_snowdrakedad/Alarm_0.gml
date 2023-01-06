myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I\\'m the resort comedian.&* I\\'m very funny^1.&* People laugh at my jokes./";
global.msg[1]= "* Now^1, my son^1.&* He wants to be a comedian&  like his fathah./";
global.msg[2]= "* But his jokes^1.&* Aren\\'t funny./";
global.msg[3]= "* He tells these awful puns^1.&* He\\'s an embarrassment to&  our family./";
global.msg[4]= "* Ha ha ha ha.../";
global.msg[5]= "* That\\'s not funny./";
global.msg[6]= "* Since his mothah passed on^1,&  he couldn\\'t stand^1.&* Living at home anymore./";
global.msg[7]= "* So he ran away^1.&* I haven\\'t seen him since./";
global.msg[8]= "* I\\'m a terrible fathah^1.&* Ha ha ha ha.../";
global.msg[9]= "* That\\'s not funny./%%";
if(talkedto > 0) {
    global.msg[0]= "* Talking to you about&  this..^1.&* It\\'s breakin\\' my heart./";
    global.msg[1]= "* Ha ha ha ha.../";
    global.msg[2]= "* That\\'s not funny./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* The doctah^1.&* She brought my wife.&* Back from the dead./";
    global.msg[1]= "* My son^1.&* He seems happy again./";
    global.msg[2]= "* Our family^1.&* It\\'s biggah than evah./";
    global.msg[3]= "* Now that my wife^1.&* Is combined^1.&* With 16 othah people./%%";
}
if(global.flag[425] == 1) {
    global.msg[0]= "* My boss stopped answering my&  calls./";
    global.msg[1]= "* I don\\'t know when my next&  performance will be./";
    global.msg[2]= "* Maybe I shouldn\\'t try to be&  a comedian anymore.../";
    global.msg[3]= "* It\\'s tearing my family apart./%%";
}
if(global.flag[57] == 2) {
    global.msg[0]= "* My son..^1.&* He was always making these&  weird ice puns./";
    global.msg[1]= "* I hated them^1, so he ran&  away from home.../";
    global.msg[2]= "* I think I should try to&  patch things up with him./";
    global.msg[3]= "* Have you seen him^1?&* Have you seen my son?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
