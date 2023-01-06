if(mercymod < 100) {
    blcon= instance_create(x + 140, y, obj_blconsm );
    gg= floor(random(3));
    mycommand= round(random(100));
    // OBJ_WRITER
    with(782) instance_destroy();
    global.msg[1]= "%%%";
    global.typer= 2;
    global.msg[0]= "Don\\'t&pick on&me.";
    if(mycommand < 75) global.msg[0]= "What are&you so&afraid&of?";
    if(mycommand < 50) global.msg[0]= "Take&your&last&look.";
    if(mycommand < 25) global.msg[0]= "You\\'ve&seen&enough.";
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    mycommand= round(random(100));
    global.msg[0]= "Robbit,&robbit.";
    if(mycommand < 75) global.msg[0]= "Shudder,&shudder.";
    if(mycommand < 50) global.msg[0]= "Creak,&creak.";
    if(mycommand < 25) global.msg[0]= "Skip,&jump.";
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    mycommand= round(random(100));
    global.msg[0]= "I\\'ve&made my&choice.";
    if(mycommand < 75) global.msg[0]= "Not this&time.";
    if(mycommand < 50) global.msg[0]= "I\\'m not&afraid&of you.";
    if(mycommand < 25) global.msg[0]= "There\\'s&still&hope.";
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
} else  {
    blcon= instance_create(x + 140, y, obj_blconsm );
    gg= floor(random(3));
    mycommand= round(random(100));
    // OBJ_WRITER
    with(782) instance_destroy();
    global.msg[1]= "%%%";
    global.typer= 2;
    global.msg[0]= "Someone&finally&gets it.";
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    blcon= instance_create(x + 140, y + 110, obj_blconsm );
    gg= floor(random(3));
    mycommand= round(random(100));
    global.msg[1]= "%%%";
    global.typer= 2;
    global.msg[0]= "Courage&...";
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    mycommand= round(random(100));
    blcon= instance_create(x + 250, y, obj_blconsm );
    gg= floor(random(3));
    mycommand= round(random(100));
    global.msg[1]= "%%%";
    global.typer= 2;
    global.msg[0]= "Ribbit&ribbit.";
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
}
mypart1.stretchup= 1;
global.border= 5;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
