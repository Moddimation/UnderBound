myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Isn\\'t my little Cinnamon&  just the cutest?/";
global.msg[1]= "* Bun-buns are so adorable..^1.&* Tee hee!/%%";
if(talkedto > 0) global.msg[0]= "* Bun-bun-bun-bun-bun.../%%";
if(global.plot > 121) {
    global.msg[0]= "* Huh^1? Yes^1, I\\'m taking&  my bunny for a walk./";
    global.msg[1]= "* It\\'s just a very slow one./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* That kid over there told&  me that it\\'s weird that&  I have a pet bunny./";
    global.msg[1]= "* First^1, there\\'d be nothing&  weird about it^1.&* It\\'s cute!/";
    global.msg[2]= "* Second..^1.&* What?/";
    global.msg[3]= "* It\\'s normal to walk your&  younger brother on a&  leash^1, right?/%%";
}
if(scr_deaddog() == 1) {
    global.msg[0]= "* Ah^1, it\\'s so peaceful&  and quiet.../";
    global.msg[1]= "* Usually one of those dogs&  chases my little Cinnamon&  around./%%";
}
if(global.flag[67] == 1) {
    global.msg[0]= "* Ah^1, it\\'s so peaceful&  and quiet.../";
    global.msg[1]= "* Usually one of those&  skeletons chases my little&  Cinnamon around./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
