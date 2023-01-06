myinteract= 3;
global.msc= 866;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* bepis/%%";
if(global.flag[7] == 1) {
    global.msc= 0;
    global.msg[0]= "* Sorry^1, we aren\\'t allowing&  any more guests at this time./";
    global.msg[1]= "* Or ever again./%%";
}
if(global.flag[425] == 1) {
    global.msc= 0;
    global.msg[0]= "* How unusual./";
    global.msg[1]= "* Mettaton usually shows up&  now to tell everyone they\\'re&  doing a great job./";
    global.msg[2]= "* Even if I was having a bad&  day^1, we\\'ll always give each&  other a thumbs-up^1, and.../";
    global.msg[3]= "* ... oh^1, what am I doing^1?&* I\\'m not being very&  professional./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
