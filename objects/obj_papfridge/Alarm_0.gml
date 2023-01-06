myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrusparent )) {
    scr_papface(0, 0);
    global.msg[1]= "AH-HA^1!&INTERESTED IN&MY FOOD MUSEUM?/";
    global.msg[2]= "PLEASE^1.&PERUSE MY&CULINARY ARTSHOW./";
    global.msg[3]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[4]= "* (Half of the fridge is&  filled with containers&  all labelled " + chr(ord("\"")) + "spaghetti." + chr(ord("\"")) + ")/";
    global.msg[5]= "* (The other half contains&  nothing but an empty&  bag of chips.)/%%";
    if(talkedto > 0) global.msg[1]= "GREAT FRIDGE^1,&ISN\\'T IT?/%%";
} else  {
    global.msg[0]= "* (Half of the fridge is&  filled with containers&  all labelled " + chr(ord("\"")) + "spaghetti." + chr(ord("\"")) + ")/";
    global.msg[1]= "* (The other half contains&  nothing but an empty&  bag of chips.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
