blcon= instance_create(x - 123, y + 52, obj_blconsm );
blcon.sprite_index= spr_blconsm2 ;
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "Take my&wife...&\\'s fleas.";
if(mycommand >= 25 && mycommand < 50)
    global.msg[0]= "Don\\'t&touch my&hot dog.";
if(mycommand >= 50 && mycommand < 75)
    global.msg[0]= "No. 2&Nuzzle&Champs&\\'98!!";
if(mycommand >= 75 && mycommand <= 100)
    global.msg[0]= "Let\\'s&kick&human&tail!!";
if(instance_exists(obj_womandog )) {
    if(whatiheard == 1 || obj_womandog.whatiheard == 1) {
        global.msg[0]= "Hm?&What\\'s&that&smell?";
        if(smell > 0) global.msg[0]= "What!&Smells&like a&...";
    }
    if(whatiheard == 3) {
        if(smell < 2) global.msg[0]= "Paws off&you&smelly&human.";
        else  global.msg[0]= "Wow!!!&Pet by&another&pup!!!";
    }
    if(obj_womandog.whatiheard == 3) {
        if(smell < 2) global.msg[0]= "Stop!&Don\\'t&touch&her!";
        if(smell >= 2) global.msg[0]= "What&about&me......&........";
    }
}
if(scr_monstersum() == 1) {
    global.monsterdef[myself]= -30;
    mercymod= -1000;
    if(mycommand < 50) global.msg[0]= "Whine.";
    else  global.msg[0]= "Whimper.";
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
