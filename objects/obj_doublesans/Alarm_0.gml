myinteract= 3;
global.msc= 0;
global.typer= 17;
global.facechoice= 3;
global.faceemotion= 0;
global.msg[0]= "* say..^./";
global.msg[1]= "\\\\E1* are you following me?/%%";
if(obj_sans_room.talkedto >= 2) global.msg[0]= "* are you lost?/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
