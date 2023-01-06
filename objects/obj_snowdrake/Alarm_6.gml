blcon= instance_create(x + 145, y + 52, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mercymod == -25 && scr_monstersum() == 1) mercymod= 0;
if(mycommand >= 0 && mycommand < 14)
    global.msg[0]= "" + chr(ord("\"")) + "Ice" + chr(ord("\"")) + "&to meet&you.";
if(mycommand >= 14 && mycommand < 28)
    global.msg[0]= "Ice puns&are&" + chr(ord("\"")) + "snow" + chr(ord("\"")) + "&problem";
if(mycommand >= 28 && mycommand < 42)
    global.msg[0]= "Fights&you in&" + chr(ord("\"")) + "cold" + chr(ord("\"")) + "&blood.";
if(mycommand >= 42 && mycommand <= 66)
    global.msg[0]= "Better&not snow&" + chr(ord("\"")) + "flake" + chr(ord("\"")) + "&out!";
if(mycommand >= 66 && mycommand <= 80)
    global.msg[0]= "My fave&ice&cereals:&" + chr(ord("\"")) + "frosted" + chr(ord("\"")) + "";
if(mycommand >= 80 && mycommand <= 90)
    global.msg[0]= "" + chr(ord("\"")) + "Chill" + chr(ord("\"")) + "&out...";
if(mycommand >= 90 && mycommand <= 100)
    global.msg[0]= "M.. m..&macaroni&and&" + chr(ord("\"")) + "freeze" + chr(ord("\"")) + "";
if(mercymod == -25) {
    if(gg == 0) global.msg[0]= "Do I&really&...";
    if(gg == 1) global.msg[0]= "Hey...";
    if(gg == 2) global.msg[0]= "Guys...&guys...";
}
if(whatiheard == 3) {
    if(joketold == 1) {
        if(gg == 0) global.msg[0]= "You have&good&taste!!&(In jokes)";
        if(gg == 1) global.msg[0]= "See!?&Laughs!&Dad was&wrong!";
        if(gg == 2) global.msg[0]= "Thanks,&you\\'re&all&great.";
        if(global.flag[57] == 0) global.msg[0]= "See!?&Laughs!&Dad was&wrong!";
        global.flag[57]= 1;
    }
    if(joketold == 0) global.msg[0]= "What are&YOU&laughin\\'&at?!?";
    alarm[5]= 108;
}
if(whatiheard != 1 && whatiheard != 3 && whatiheard != 4 && whatiheard != 19 && whatiheard != 20 && mercymod != -25)
    joketold= 1;
if(whatiheard == 4) {
    if(gg == 0) global.msg[0]= "Is that&s\\'posed&to be&funny?";
    if(gg == 1) global.msg[0]= "Ha...&Ha...&Nice&try.";
    if(gg == 2) global.msg[0]= "I\\'ve&heard&that&one.";
}
if(whatiheard == 1) {
    if(gg == 0) global.msg[0]= "THIS&won\\'t be&funny&either!";
    if(gg == 1) global.msg[0]= "Is your&flesh&rotten&as you?";
    if(gg == 2) global.msg[0]= "(Insults&towards&humans)";
    joketold= 0;
}
if(whatiheard == 20) {
    if(gg == 0) global.msg[0]= "IT\\'S&JUST&LIKE&\\'EM";
    if(gg == 1) global.msg[0]= "HAHA&YOU\\'RE&BETTER";
    if(gg == 2) global.msg[0]= "YOU&NAILED&IT";
    mercymod= 200;
}
if(whatiheard == 19) {
    if(gg == 0) global.msg[0]= "That\\'s&not&like&me...";
    if(gg == 1) global.msg[0]= "I don\\'t&do it&that&way...";
    if(gg == 2) global.msg[0]= "It\\'s&better&when I&do it...";
    mercymod= -25;
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
