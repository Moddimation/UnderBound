myinteract= 3;
global.msc= 0;
global.typer= 38;
global.facechoice= 0;
global.faceemotion= 0;
if(global.plot < 118) {
    // obj_mainchara
    with(1570) uncan= 1;
    global.msg[0]= "* Behind you./%%";
    con= 1;
} else  {
    global.typer= 5;
    global.msg[0]= "* You aren\\'t gonna tell my&  parents about this^1, are you?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
object_index.talkedto++;

/* */
/*  */
