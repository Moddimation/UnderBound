myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I ran away from home^1.&* Why?/";
global.msg[1]= "* \\'Cause my father was so&  " + chr(ord("\"")) + "cold" + chr(ord("\"")) + " to me.../";
global.msg[2]= "* WHAT!^1?&* It\\'s a JOKE!^1!&* LAUGH at it!!/%%";
if(talkedto > 0)
    global.msg[0]= "* I really don\\'t^1!&* I don\\'t care if he doesn\\'t&  like my jokes!/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Mom might have to share her&  mind with other people now^1,&  but she\\'s still my mom./";
    global.msg[1]= "* And that\\'s " + chr(ord("\"")) + "cool!" + chr(ord("\"")) + "/";
    global.msg[2]= "* \\'Cause^1, uhh^1, we\\'re made&  of ice and stuff./";
    global.msg[3]= "* WHAT!?!^1?&* It\\'s a JOKE!^1!&* LAUGH at it!!/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
