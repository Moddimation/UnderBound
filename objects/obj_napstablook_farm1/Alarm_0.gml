myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* awkward..^1.&* i\\'m working right now.../";
global.msg[1]= "* i mean.../";
global.msg[2]= "* welcome to blook family&  snail farm.../";
global.msg[3]= "* ... yeah^1.&* i\\'m the only employee./";
global.msg[4]= "* this place used to get a lot&  of business.../";
global.msg[5]= "* but our main customer&  disappeared one day.../";
global.msg[6]= "* now it\\'s just some hairy&  guy that shows up once&  a month.../%%";
if(talkedto > 0) {
    global.msg[0]= "* really^1, i\\'m working..^1.&* i don\\'t want the boss&  to get mad at me.../";
    global.msg[1]= "* especially since i\\'m my&  own boss.../%%";
}
if(global.flag[350] == 1) {
    global.msg[0]= "* hmmm..^1. i should probably&  try to make friends&  with my neighbor/";
    global.msg[1]= "* she\\'s kind of scary^1, but&  i feel like i\\'m always&  too late to make friends.../";
    global.msg[2]= "* i should at least try.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
