blcon= instance_create(x + sprite_width - 8, ystart, obj_blconsm );
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "Contains&Vitamin&A";
if(mycommand >= 25 && mycommand < 50)
    global.msg[0]= "Part Of&A&Complete&Breakfast";
if(mycommand >= 50 && mycommand <= 75)
    global.msg[0]= "Farmed&Locally,&Very&Locally";
if(mycommand >= 75 && mycommand <= 100)
    global.msg[0]= "Fresh&Morning&Taste";
if(ate == 1) global.msg[0]= "Ate&Your&Greens";
if(whatiheard == 3) global.msg[0]= "Plants&Can\\'t&Talk&Dummy";
if(whatiheard == 4) global.msg[0]= "Eat&Your&Greens";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
