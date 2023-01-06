myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Haha^1, ha ha ha^1.&* Secret^1, secret^1.&* I\\'ve done up a trouble./";
global.msg[1]= "* I set the lava on fire./";
global.msg[2]= "* No one will EVER know^1.&* It\\'s the perfect crime.../%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Haha^1, ha ha ha^1.&* If we leave^1, no one will&  REALLY ever know!!/%%";
    global.msg[2]= "* This crime just gets perfecter&  and perfecter./%%";
}
if(talkedto > 0) global.msg[0]= "* The lava\\'s so spicey now./%%";
if(room == 165) {
    global.msg[0]= "* Haha^1, ha ha ha^1.&* Ya wanna " + chr(ord("\"")) + "hang" + chr(ord("\"")) + " out?/";
    global.msg[1]= "* Haha^1, ha ha ha^1.&* Sorry^1, I\\'m all TIED UP!!!/";
    global.msg[2]= "* Psyche^1! Owned^1!&* No one wants to be MY&  friend!!!/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* Haha^1, ha ha ha^1.&* Wonder if any humans would&  wanna be my friend./";
        global.msg[1]= "* PSYYYYCHE^1!&* That\\'d NEVER happen!/%%";
    }
    if(talkedto > 0)
        global.msg[0]= "* I\\'m too spicey to have&  any friends./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
