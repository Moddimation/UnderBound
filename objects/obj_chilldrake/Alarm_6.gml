blcon= instance_create(x + 145, y + 52, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mercymod == -25 && scr_monstersum() == 1) mercymod= 0;
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "Brush my&teeth?&No way&in heck!";
if(mycommand >= 25 && mycommand < 50)
    global.msg[0]= "NEVER do&your&homework&!!";
if(mycommand >= 50 && mycommand < 75)
    global.msg[0]= "No&bedtime!&Only&DEADTIME";
if(mycommand >= 75 && mycommand <= 100)
    global.msg[0]= "*turns&music up&all the&way*";
if(whatiheard == 3) {
    if(joketold == 1) {
        if(gg == 0) global.msg[0]= "Do you...&really&...";
        if(gg == 1) global.msg[0]= "I don\\'t&think&you...";
        if(gg == 2) global.msg[0]= "To tell&you the&truth...";
    }
    if(joketold == 0) global.msg[0]= "You&don\\'t&know my&cause!!";
    alarm[5]= 108;
}
if(whatiheard != 1 && whatiheard != 3 && whatiheard != 4 && whatiheard != 19 && whatiheard != 20 && mercymod != -25)
    joketold= 1;
if(whatiheard == 4) {
    if(gg == 0) global.msg[0]= "Only&Snowy&can do&that.";
    if(gg == 1) global.msg[0]= "You&ain\\'t&Snowy.";
    if(gg == 2) global.msg[0]= "Stick to&puns.&They\\'re&better.";
}
if(whatiheard == 1) {
    if(gg == 0) global.msg[0]= "WRONG!&Let\\'s&fight&and die.";
    if(gg == 1) global.msg[0]= "Actually&...&Death?";
    if(gg == 2) global.msg[0]= "Defiance&can\\'t be&defied!";
    joketold= 0;
}
if(whatiheard == 20) {
    if(gg == 0) global.msg[0]= "IT\\'S&JUST&LIKE&\\'EM";
    if(gg == 1) global.msg[0]= "HAHA&WOWEE";
    if(gg == 2) global.msg[0]= "YOU&NAILED&IT";
    mercymod= 200;
}
if(whatiheard == 19) {
    if(gg == 0) global.msg[0]= "Where\\'s&Snowy&right&now?";
    if(gg == 1) global.msg[0]= "Ha...&Ha...";
    if(gg == 2) global.msg[0]= "Nice&try,&laugh&Picasso.";
    mercymod= -25;
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
