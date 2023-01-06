blcon= instance_create(x + 205, y + 52, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "Error!!";
if(mycommand >= 0 && mycommand < 20)
    global.msg[0]= "Is this&funny to&you?";
if(mycommand >= 20 && mycommand < 40)
    global.msg[0]= "Don\\'t&put any&more on&me!";
if(mycommand >= 40 && mycommand < 60)
    global.msg[0]= "Leave me&alone...";
if(mycommand >= 60 && mycommand <= 80)
    global.msg[0]= "Hohoho!&Go ahead&and&laugh...";
if(mycommand >= 80 && mycommand <= 100)
    global.msg[0]= "Get this&off of&me...";
if(mercymod > 90) {
    global.msg[0]= "Thanks.";
    global.monsterdef[myself]= -100;
}
if(whatiheard == 4) {
    if(giftgiven == 1) global.msg[0]= "Aw, you&shouldn\\'&have...";
    if(giftgiven == 2) global.msg[0]= "You even&wrapped&it...";
    if(googly == 1) global.msg[0]= "Keep&away&from me!";
    if(betray == 1) global.msg[0]= "I don\\'t&want&your&gift!";
    if(itemgone == 0) global.msg[0]= "How do&I know&it\\'s not&a trick?";
}
if(whatiheard == 3) {
    global.flag[74]= 1;
    global.msg[0]= "GOSHDARN&TEENAGE&GOOGLY&EYES!!!";
    if(itemgone > 0 || giftgiven > 0) {
        global.msg[0]= "I WAS&STARTING&TO TRUST&YOU!!!";
        betray= 1;
    }
    mercymod= -20;
}
if(whatiheard == 1) {
    if(itemgone == 1 || itemgone == 2) {
        mercymod= 10;
        global.msg[0]= "That\\'s&a little&better.";
    }
    if(mercymod > 170) global.msg[0]= "Er...&Those&are&real.";
    else  {
        if(itemgone == 3) {
            mercymod= 200;
            global.msg[0]= "A weight&has been&lifted.";
        }
    }
    if(ung == 1) global.msg[0]= "Thanks&for&nothing!";
    ung= 0;
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
