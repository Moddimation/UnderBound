myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Welcome to our parlor^1, dearie^1~&* Interested in some spider&  pastries?/";
global.msg[1]= "* All proceeds go to real&  spiders~/%%";
if(talkedto > 0)
    global.msg[0]= "* Check out the webs to&  make a purchase~/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
