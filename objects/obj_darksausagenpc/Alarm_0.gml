myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Why do I look like a weird&  black sausage^1?&* Just the angle./%%";
if(room == 190) {
    global.msg[0]= "* As a youth^1, I would sneak&  out to play by this creepy&  flaming pit./";
    global.msg[1]= "* Since the CORE is always&  re-arranging^1, it was like&  a game trying to find it./";
    global.msg[2]= "* Now it is my special place^1.&* It is nice for cooking s\\'mores&  and things like that./%%";
}
if(room == 191) {
    global.msg[0]= "* We were hired by Mettaton&  to destroy you./";
    global.msg[1]= "* But since he never paid us^1,&  we all decided to quit./";
    global.msg[2]= "* No hard feelings./%%";
}
if(room == 194) {
    global.msg[0]= "* Zzzzzzz.../";
    global.msg[1]= "* (It\\'s taking a nap.)/%%";
}
if(room == 208) {
    global.msg[0]= "* Why do I look like a black&  sausage and not a knight&  or a wizard?/";
    global.msg[1]= "* Well..^1.&* Everyone has an angle they&  look best from../%%";
}
if(room == 204) {
    global.msg[0]= "* The core is made up of&  interchangable rooms./";
    global.msg[1]= "* Before you came here^1, the&  layout was altered so you&  would get lost and perish./";
    global.msg[2]= "* Yes^1. Just for you^1.&* Do you feel special?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
