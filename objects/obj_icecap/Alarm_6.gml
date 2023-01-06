blcon= instance_create(x + sprite_width - 8, ystart, obj_blconsm );
mycommand= round(random(100));
gg= floor(random(3));
if(mycommand >= 0 && mycommand < 20)
    global.msg[0]= "Where\\'s&YOUR&hat?";
if(mycommand >= 20 && mycommand < 40)
    global.msg[0]= "Your&head&looks so&...NAKED";
if(mycommand >= 40 && mycommand < 60)
    global.msg[0]= "What a&great&hat!&(Mine)";
if(mycommand >= 60 && mycommand <= 80)
    global.msg[0]= "Snow?&No! It\\'s&hat&residue.";
if(mycommand >= 80 && mycommand <= 100)
    global.msg[0]= "I just&looove&my hat.&OK?";
if(whatiheard == 1) {
    if(ignore > 0) {
        if(gg == 0) global.msg[0]= "Fine!!!&I don\\'t&care!!!";
        if(gg == 1) global.msg[0]= "OK!&I\\'ll&ignore&you too.";
        if(gg == 2) global.msg[0]= "Better&a hatter&than a&HATER.";
        ignore= 2;
        mercymod= 300;
    }
    if(ignore == 0) {
        if(gg == 0 || gg == 1)
            global.msg[0]= "HELLO???&My hat\\'s&up here.";
        if(gg == 2) global.msg[0]= "What?&What are&you&doing?";
        ignore= 1;
    }
}
if(whatiheard == 3) {
    if(gg == 0) global.msg[0]= "DUH!&Who&DOESN\\'T&know?";
    if(gg == 1) global.msg[0]= "Envious?&TOO BAD!";
    if(gg == 2) global.msg[0]= "My hat\\'s&too loud&for me to&hear you.";
}
if(whatiheard == 4) {
    if(gg == 0) global.msg[0]= "I KNEW&IT!!!&THIEF!!";
    if(gg == 1 || gg == 2)
        global.msg[0]= "HELP!!!&FASHION&POLICE!!";
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
