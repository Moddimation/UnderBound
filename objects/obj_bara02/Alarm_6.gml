blcon= instance_create(x - blconx + 40, y + 55 + 32, obj_blconsm );
blcon.sprite_index= spr_blconsm2 ;
gg= floor(random(3));
attacked= 0;
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "...&...&...&sigh.";
if(mycommand >= 25) global.msg[0]= "...&...&heh.";
if(mycommand >= 50) global.msg[0]= "...&...&what?";
if(mycommand >= 75) global.msg[0]= "...&...&hmph.";
if(turn0 == 0) global.msg[0]= "...&team&attack.";
turn0= 1;
if(whatiheard == 3) global.msg[0]= "...&i&won\\'t&tell.";
if(whatiheard == 1) {
    global.msg[0]= "...&getting&...&warmer.";
    if(shirtless == 1) global.msg[0]= "...&hello.";
}
pop= scr_monstersum();
if(pop < 2) {
    if(mycommand >= 0 && mycommand < 25) global.msg[0]= "...";
    if(mycommand >= 25) global.msg[0]= "...";
    if(mycommand >= 50) global.msg[0]= "...";
    if(mycommand >= 75) global.msg[0]= "...";
    if(freshdeath == 0 && mercymod < 1)
        global.msg[0]= "01...&you...!&..!!!!";
    if(freshdeath == 0 && mercymod > 100)
        global.msg[0]= "01...!?&What&the...!?";
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
