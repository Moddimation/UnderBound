myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(y > 540) {
    global.msg[0]= "* (You rest your hand on&  the rusted bike.^1)/";
    global.msg[1]= "* (Its horn wheezes a honk&  of despair.)/%%";
    con= 1;
}
if(y < 500 && y > 420)
    global.msg[0]= "* (A beat-up desktop computer.^1)&* (The inside is empty.)/%%";
if(y < 340 && y > 280) {
    global.msg[0]= "* (It\\'s a DVD case for an&  anime.)/";
    global.msg[1]= "* (Desperate claw marks cover&  the edges.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
object_index.talkedto++;


/*  */
