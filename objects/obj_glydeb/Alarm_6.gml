blcon= instance_create(x + 220, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "How&great&I am.";
if(mycommand < 75) global.msg[0]= "Look.&Watch.&Observe.";
if(mycommand < 50) global.msg[0]= "Wow.&Check&out my&pecs.";
if(mycommand < 25) global.msg[0]= "Sorry...&for&NOTHING&*ollies*";
if(whatiheard == 1) {
    global.msg[0]= "Bepis";
    if(boo == 1) global.msg[0]= "Boo?&What a&wimpy&ghost.";
    if(boo >= 2) global.msg[0]= "Mmm,&Fresh&Sweet&Haters";
}
if(whatiheard == 3) {
    global.msg[0]= "OK!&I rule!&I admit&it!";
    if(applaud >= 2) global.msg[0]= "What&else do&you have&to say!?";
}
if(whatiheard == 4) {
    global.msg[0]= "...";
    if(nothing == 1) global.msg[0]= "Eh?&You&forgot&to clap.";
    if(nothing == 2) global.msg[0]= "HELLO??&I\\'M&RIGHT&HERE!!!";
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
