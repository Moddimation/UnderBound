blcon= instance_create(x + 165 + 28, y + 55 + 32, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "Like,&give us&the soul&brah.";
if(mycommand >= 25)
    global.msg[0]= "Like,&" + chr(ord("\"")) + "you\\'re&dead" + chr(ord("\"")) + "&and all.";
if(mycommand >= 50) global.msg[0]= "Like,&prepare&to die,&right?";
if(mycommand >= 75) global.msg[0]= "Like,&perish&and&stuff.";
if(shake == 1) global.msg[0]= "D...&Dude...";
if(turn0 == 0) global.msg[0]= "Like,&team&attack!";
turn0= 1;
if(whatiheard == 3) {
    global.msg[0]= "Like...&what?&I don\\'t&get it.";
    if(toldhim == 1) global.msg[0]= "I...&I...";
}
if(whatiheard == 1) global.msg[0]= "Like,&hands&off the&merch.";
if(whatiheard == 12) global.msg[0]= "H-HEY,&STOP&THAT!!";
pop= scr_monstersum();
if(pop < 2) {
    if(mycommand >= 0 && mycommand < 25)
        global.msg[0]= "02...&this is,&like,&for you.";
    if(mycommand >= 25) global.msg[0]= "Like,&02...";
    if(mycommand >= 50) global.msg[0]= "02...&are you&really..";
    if(mycommand >= 75) global.msg[0]= "...";
    if(freshdeath == 0 && mercymod < 1)
        global.msg[0]= "02...&I never&told&him...";
    if(freshdeath == 0 && mercymod > 100)
        global.msg[0]= "02!?&B-but&why!?";
    freshdeath= 1;
    mercymod= -99999;
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 15;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
