myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Everyone is always laughing&  and cracking jokes^1, trying&  to forget our modern crises.../";
global.msg[1]= "* Dreariness^1.&* Crowding^1.&* Lack of sunlight./";
global.msg[2]= "* I would join them^1, but I\\'m&  just not very funny./%%";
if(talkedto > 0)
    global.msg[0]= "* At least I\\'m not making puns./%%";
if(global.plot >= 122) {
    global.msg[0]= "* Wait^1!&* I\\'ve got a joke!/";
    global.msg[1]= "* Knock knock!/";
    global.msg[2]= "* ... Uh^1.&* That\\'s all I\\'ve thought of./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Looks like I don\\'t have&  to worry about cracking&  jokes anymore./";
    global.msg[1]= "* .../";
    global.msg[2]= "* I was going to say a joke&  here^1, but I really don\\'t&  have one./%%";
}
if(global.flag[67] == 1 || scr_deaddog() == 1)
    global.msg[0]= "* It just feels like..^1.&* Like everything is getting&  worse and worse./%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
