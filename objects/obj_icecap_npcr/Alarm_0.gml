myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* We all live in the woods^1,&  so no one can tell us&  what to do!/";
global.msg[1]= "* But now everyone ignores&  us.../";
global.msg[2]= "* I don\\'t want freedom if&  it means no one\\'s gonna&  pay attention to me./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Maybe someone on the surface&  will pay attention to me./";
    global.msg[1]= "* There\\'re so many people^1,&  someone has to^1, right!?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
