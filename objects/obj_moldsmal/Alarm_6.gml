blcon= instance_create(x + sprite_width - 8, ystart - 20, obj_blconsm );
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 30)
    global.msg[0]= "Burble&burb...";
if(mycommand >= 25 && mycommand < 50)
    global.msg[0]= "Squorch&...";
if(mycommand >= 50 && mycommand < 80)
    global.msg[0]= "*Slime&sounds*";
if(mycommand >= 75 && mycommand <= 100)
    global.msg[0]= "*Sexy&wiggle*";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
