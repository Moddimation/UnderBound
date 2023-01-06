blcon= instance_create(x + 155, y - 25, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "It\\'s not&like I&LIKE&you.";
if(mycommand >= 25) global.msg[0]= "Id...&Idiot!";
if(mycommand >= 50) global.msg[0]= "Hmph!&Don\\'t&get in&my way.";
if(mycommand >= 75) global.msg[0]= ">_<...&Human&...";
if(graze >= 5) {
    if(mycommand >= 0 && mycommand < 50)
        global.msg[0]= "...&H-human&...&...?";
    if(mycommand >= 50) global.msg[0]= "Id...&Idiot!";
}
if(whatiheard == 1) {
    global.msg[0]= "Eeeeh?&H-human&...?";
    if(graze >= 5) global.msg[0]= "Human,&I...";
}
if(whatiheard == 3) {
    global.msg[0]= "Huh!?&Y-you&sicko!";
    if(graze >= 5) global.msg[0]= "Ah...&Is that&true...?";
}
if(whatiheard == 9) {
    global.msg[0]= "No way!&Why&would I&like YOU";
    if(graze >= 5) global.msg[0]= "Human,&I...";
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 17;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
