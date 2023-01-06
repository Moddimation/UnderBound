myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Everyone\\'s wearing hats^1.&* Should I branch into a&  different item?/";
global.msg[1]= "* Ice jorts./";
global.msg[2]= "* ... doesn\\'t have the same&  ring to it./%%";
if(talkedto > 0) global.msg[0]= "* Ice socks and sandals./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* I know how to set myself&  apart now^1!&* An ear piercing!/";
    global.msg[1]= "* .../";
    global.msg[2]= "* Wait./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
