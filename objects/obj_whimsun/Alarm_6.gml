blcon= instance_create(x + sprite_width - 8, ystart, obj_blconsm );
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 30)
    global.msg[0]= "I\\'m&sorry...";
if(mycommand >= 30 && mycommand < 50)
    global.msg[0]= "I have&no&choice..";
if(mycommand >= 50 && mycommand < 80)
    global.msg[0]= "Forgive&me...";
if(mycommand >= 80 && mycommand <= 100)
    global.msg[0]= "*sniff&sniff*";
if(whatiheard == 1 || whatiheard == 3)
    global.msg[0]= "I&can\\'t&handle&this...";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
