myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Welcome to the library^1.&* Yes^1, we know^1.&* The sign is misspelled./%%";
if(global.plot >= 122) {
    global.msg[0]= "* Yes^1, we know^1.&* The sign is misspelled./";
    global.msg[1]= "* We have someone working on&  it!/%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Welcome to the library./";
    global.msg[1]= "* This is the last day we\\'ll&  be open^1, so make as much&  noise as you want./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
