blcon= instance_create(x + 95, y - 25, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand < 5) bodypart= "face";
if(mycommand >= 5) bodypart= "teeth&and eyes";
if(mycommand >= 10) bodypart= "leg";
if(mycommand >= 15) bodypart= "SOUL";
if(mycommand >= 20) bodypart= "hand";
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "Wosh u&" + bodypart;
if(mycommand >= 25) {
    global.msg[0]= "*whistle&as it&cleans*";
    if(global.kills > 0) global.msg[0]= "Your&SOUL&is&unclean";
}
if(mycommand >= 50) global.msg[0]= "Out!!!&Darned&spot";
if(mycommand >= 75 && dub == 1)
    global.msg[0]= "Oops, I&meant...&scrub a&sub-SUBS";
if(mycommand >= 75 && dub == 0) {
    global.msg[0]= "Scrub a&dub-dubs";
    dub= 1;
}
if(whatiheard == 3) global.msg[0]= "Green&means&clean";
if(whatiheard == 1) {
    global.msg[0]= "Yuck!";
    if(clean == 2) global.msg[0]= "Fresh!";
}
if(whatiheard == 4) global.msg[0]= "NO. THAT&JOKE\\'S&TOO...&DIRTY";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
blcontweet= instance_create(x, y - 40, obj_blconsm );
blcontweet.sprite_index= spr_blcontinyabove ;
global.msc= 0;
global.msg[0]= "\\\\Xtweet";
global.typer= 5;
blconwd2= instance_create(blcontweet.x + 15, blcontweet.y - 10, OBJ_INSTAWRITER );
blconwd2.shake= 1;
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
