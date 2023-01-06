blcon= instance_create(x + 100, y + 20, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 30)
    global.msg[0]= "Robbit,&robbit.";
if(mycommand >= 30 && mycommand < 50)
    global.msg[0]= "Creak,&creak.";
if(mycommand >= 50 && mycommand < 80)
    global.msg[0]= "Skip,&jump.";
if(mycommand >= 80 && mycommand <= 100) global.msg[0]= "Woof.";
if(whatiheard == 1) global.msg[0]= "Shudder,&shudder.";
if(whatiheard == 3) global.msg[0]= "Nod,&nod.";
if(whatiheard == 4) global.msg[0]= "(Thought&-ful&croak)";
if(impress == 1) global.msg[0]= "(Impress&-ed&ribbit)";
impress= 0;
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
