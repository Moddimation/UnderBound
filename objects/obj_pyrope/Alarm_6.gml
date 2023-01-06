global.msg[0]= "Hot!!!&Error.";
blcon= instance_create(x + 110, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "Burn,&baby,&BURN!";
if(mycommand >= 25 && mycommand < 50)
    global.msg[0]= "Hot&enough&for&ya!?";
if(mycommand >= 50 && mycommand < 75)
    global.msg[0]= "Feel&the&heat.";
if(mycommand >= 75 && mycommand < 100)
    global.msg[0]= "Is it&cold in&here?";
if(whatiheard == 1) global.msg[0]= "Hot!!&HOT!!&Hotter!&HOTTER!!";
if(whatiheard == 3) global.msg[0]= "BRRRR!&What\\'s&the&deal!?";
if(whatiheard == 4) global.msg[0]= "Sorry!!&I\\'m all&tied&up!!";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 17;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
