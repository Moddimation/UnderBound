blcon= instance_create(x + 100, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(global.hp < global.maxhp) {
    if(mycommand >= 0 && mycommand < 50)
        global.msg[0]= "Ah! I\\'ll&help!&Healing&magmas!";
    if(mycommand >= 50) global.msg[0]= "You\\'re&hurt!&I\\'ll&help!!!";
}
if(global.hp >= global.maxhp) {
    if(mycommand >= 0 && mycommand < 50)
        global.msg[0]= "Thunder!&Helpful&speed&up!!!";
    if(mycommand >= 50) global.msg[0]= "Speed&will&help&dodge!!";
}
if(criticize > 0) {
    if(mycommand >= 0 && mycommand < 50) global.msg[0]= "Ahh...";
    if(mycommand >= 50) global.msg[0]= "Does&not&help...";
}
if(hug > 0) {
    if(mycommand >= 0 && mycommand < 50)
        global.msg[0]= "Oh!&Ah!&I\\'m&helping!";
    if(mycommand >= 50) global.msg[0]= "Feels&so&warm...";
}
if(encourage > 0) {
    if(mycommand >= 0 && mycommand < 50)
        global.msg[0]= "Ahh!&Tries&the&hardest!";
    if(mycommand >= 50) global.msg[0]= "Works&hard!&Works&hot!";
}
if(whatiheard == 1) {
    global.msg[0]= "Ahh!&Ahh!&Does&my best!";
    mypart1.face= 389;
}
if(whatiheard == 3) {
    mypart1.face= 391;
    global.msg[0]= "Ahh...&Not...&helping?&OK...";
    if(criticize == 2) global.msg[0]= "Trash...&rump...&Ahh...";
}
if(whatiheard == 4) {
    mypart1.face= 390;
    global.msg[0]= "Ahh...&So...&LOVEY!";
    if(hug == 2) global.msg[0]= "Hug...&continue&...";
    if(hug == 3) global.msg[0]= "Starting&to get&weird.";
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 17;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
