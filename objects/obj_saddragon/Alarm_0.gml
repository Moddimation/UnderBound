myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Yeah^1, I\\'m not gonna be home&  tonight... um.../";
global.msg[1]= "* I think there\\'s some cold&  pizza in my treasure horde&  you can heat up.../%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Ummm^1, are you guys on your&  way out^1?/";
    global.msg[1]= "* Guess I\\'ll catch up with you&  later.../%%";
}
if(global.flag[425] == 1) {
    global.msg[0]= "* Yeah^1, I\\'m not gonna be home&  tonight... um.../";
    global.msg[1]= "* In fact^1, I don\\'t feel like&  I\\'ll be home tomorrow^1,&  either^1, at this rate.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
