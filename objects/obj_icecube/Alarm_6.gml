blcon= instance_create(x + sprite_width - 8, ystart + 50, obj_blconsm );
mycommand= round(random(100));
gg= floor(random(3));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "I...&I...";
if(mycommand >= 25 && mycommand < 50)
    global.msg[0]= "What can&I say...";
if(mycommand >= 50 && mycommand < 75)
    global.msg[0]= "What\\'s&the&point...";
if(mycommand >= 75 && mycommand <= 101)
    global.msg[0]= "So...&Cold...";
if(happy == 1) {
    if(mycommand >= 0 && mycommand < 25)
        global.msg[0]= "Yeah...&I like&my hair&too.";
    if(mycommand >= 25 && mycommand < 50)
        global.msg[0]= "Hmm...&Hats are&for&posers.";
    if(mycommand >= 50 && mycommand < 75)
        global.msg[0]= "So I can&still&impress&you?";
    if(mycommand >= 75 && mycommand <= 101)
        global.msg[0]= "I wanted&you to&see me&as cool.";
}
if(whatiheard == 20) {
    if(gg == 0) global.msg[0]= "Haha!&That was&ACTUALLY&funny!";
    if(gg == 1) global.msg[0]= "Ha!&Imitated&it spot-&on!";
    if(gg == 2) global.msg[0]= "That\\'s&the best&one in&a while!";
    mercymod= 200;
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
