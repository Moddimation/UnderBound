myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (The door is locked.)/%%";
if(sprite_index == 1673)
    global.msg[0]= "* (This half of the door is&  unlocked.)/%%";
if(global.plot > 132 && room == 148)
    global.msg[0]= "* (The door is open.)/%%";
if(global.plot > 163 && room == 171)
    global.msg[0]= "* (The door is open.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
