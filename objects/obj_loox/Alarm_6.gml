blcon= instance_create(x + sprite_width - 8, ystart + 8, obj_blconsm );
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 20)
    global.msg[0]= "I\\'ve got&my eye&on you.";
if(mycommand >= 20 && mycommand < 40)
    global.msg[0]= "Don\\'t&point&that&at me.";
if(mycommand >= 40 && mycommand < 60)
    global.msg[0]= "Quit&staring&at me.";
if(mycommand >= 60 && mycommand <= 80)
    global.msg[0]= "What an&eyesore.";
if(mycommand >= 80 && mycommand <= 100)
    global.msg[0]= "How&about a&staring&contest?";
if(global.turn == 0) global.msg[0]= "Please&don\\'t&pick on&me.";
if(whatiheard == 1) global.msg[0]= "Finally&someone&gets it.";
if(whatiheard == 3) global.msg[0]= "You rude&little&snipe!";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
