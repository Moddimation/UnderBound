myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* It makes sense why ASGORE&  took so long to hire a&  new Royal Scientist./";
global.msg[1]= "* After all^1, the old one..^1.&* Dr. Gaster^1.&* What an act to follow!/";
global.msg[2]= "* They say he created the CORE./";
global.msg[3]= "* However^1, his life..^1.&* Was cut short./";
global.msg[4]= "* One day^1, he fell into&  his creation^1, and.../%%";
if(talkedto >= 1)
    global.msg[0]= "* Will Alphys end up the&  same way?/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
