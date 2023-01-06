myinteract= 3;
global.msc= 556;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msc= 0;
global.msg[0]= "* (There\\'s an empty pie tin&  inside the stove.)/%%";
if(instance_exists(obj_papyrusparent )) {
    scr_papface(0, 0);
    global.msg[1]= "\\\\E0MY BROTHER ALWAYS&GOES OUT TO EAT^1.&BUT.../";
    global.msg[2]= "\\\\E3RECENTLY^1, HE TRIED&\\'BAKING\\' SOMETHING./";
    global.msg[3]= "IT WAS LIKE..^1.&A QUICHE./";
    global.msg[4]= "BUT FILLED WITH A&SUGARY^1, NON-EGG&SUBSTANCE./";
    global.msg[5]= "\\\\E0HOW ABSURD!/%%";
}
if(talkedto > 0)
    global.msg[0]= "* (There\\'s an empty pie tin&  inside the stove.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
