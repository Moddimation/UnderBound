myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Awful teens tormented&  a local monster by decorating&  its tree-like horns./";
global.msg[1]= "* So we started giving that&  monster presents to make it&  feel better./";
global.msg[2]= "* Now it\\'s a tradition to put&  presents underneath a decorated&  tree./%%";
if(talkedto > 0)
    global.msg[0]= "* Guess it was a good thing&  those teens tormented that&  monster...?/%%";
if(global.plot >= 122) {
    global.msg[0]= "* Hmm^1?&* Adjusting the presents is&  my responsibility./";
    global.msg[1]= "* Nah^1, to be honest^1, I&  just keep looking to see&  if I\\'ve gotten one.../%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* It\\'ll be nice to show humans&  our presents-under-the-tree&  tradition./";
    global.msg[1]= "* They\\'ll probably be weirded&  out by it./%%";
}
if(scr_deaddog() == 1) {
    global.msg[0]= "* You know what\\'s cute?/";
    global.msg[1]= "* Those two married dogs&  always put presents under&  the tree for each other./";
    global.msg[2]= "* It\\'s always the same^1.&* A single bone./";
    global.msg[3]= "* But every time^1, they act&  like it\\'s the first time&  they\\'ve gotten it./";
    global.msg[4]= "* Then Papyrus comes to take&  his bones back./";
    global.msg[5]= "* Anyway^1, where are those&  two...?/%%";
}
if(global.flag[67] == 1) {
    global.msg[0]= "* That\\'s strange^1.&* There was a present here&  for Papyrus.../";
    global.msg[1]= "* Now it\\'s gone^1.&* Did someone steal it?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
