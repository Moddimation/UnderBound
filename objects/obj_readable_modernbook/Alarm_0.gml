myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
global.msg[0]= "* (Here I am..^1.&* Writing this book.)/";
global.msg[1]= "* (A person comes in and picks&  up the book...)/";
global.msg[2]= "* (They start reading it...!)/";
global.msg[3]= "* Oh^1, sorry^1.&* I\\'m still writing that one./%%";
read++;
if(scr_murderlv() >= 7) global.msg[0]= "* (Some unfinished book.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
