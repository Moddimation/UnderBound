myinteract= 3;
global.msc= 0;
global.typer= 19;
global.facechoice= 4;
global.faceemotion= 0;
global.msg[0]= "WELCOME TO SCENIC&MY HOUSE!/";
global.msg[1]= "ENJOY AND TAKE&YOUR TIME!!!/%%";
if(workout == 1)
    global.msg[0]= "WOW!&BEING A GOOD HOST&IS A REAL WORKOUT!/%%";
if(workout == 2) {
    global.faceemotion= 3;
    global.msg[0]= "\\\\E3I CAN\\'T FEEL MY&LEGS.../";
    global.msg[1]= "\\\\E0THAT MUST MEAN&I\\'M BEING A&GREAT HOST!!!/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
