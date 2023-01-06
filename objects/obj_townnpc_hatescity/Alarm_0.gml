myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* The capital\\'s getting pretty&  crowded^1, so I\\'ve heard they\\'re&  going to start moving here./";
global.msg[1]= "* Hmmm..^1.&* I don\\'t want to see the&  erasure of our local culture./";
global.msg[2]= "* But I definitely want to see&  some city slickers slip onto&  their butts!/%%";
if(talkedto > 0) global.msg[0]= "* Yeah^1, bring \\'em on!/%%";
if(global.plot > 121) {
    global.msg[0]= "* What will happen to&  Grillby\\'s if everyone&  moves in...?/";
    global.msg[1]= "* We\\'re gonna have to have&  chairs to the ceiling./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Hey^1! People won\\'t have to&  move in from the city&  anymore!/";
    global.msg[1]= "* Seems like we won\\'t have&  to lose our local culture./";
    global.msg[2]= "* ... except we\\'re all moving&  out of here^1, huh./";
    global.msg[3]= "* Oh well^1. Guess it can\\'t be&  all punk-peaches and punk-&  cream./%%";
}
if(scr_deaddog() == 1 || global.flag[67] == 1) {
    global.msg[0]= "* The capital\\'s getting pretty&  crowded^1, so I\\'ve heard they\\'re&  going to start moving here./";
    global.msg[1]= "* ... who knows^1.&* Maybe we\\'ll have room./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
