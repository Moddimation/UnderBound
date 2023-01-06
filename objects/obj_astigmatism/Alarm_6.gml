blcon= instance_create(x + 100, y + 20, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "...&...";
if(mycommand < 75) global.msg[0]= "You\\'ve&seen&enough.";
if(mycommand < 50) global.msg[0]= "Take&your&last&look.";
if(mycommand < 25) global.msg[0]= "...";
if(whatiheard == 1) {
    if(mercymod < 0) global.msg[0]= "What are&you so&afraid&of?";
    if(mercymod > 80) global.msg[0]= "Finally,&someone&gets it.";
}
if(whatiheard == 3) {
    if(mercymod < 0) global.msg[0]= "How&dare&you.";
    if(mercymod > 80) global.msg[0]= "That\\'s&right!";
}
if(whatiheard == 4) {
    if(mercymod < 1) global.msg[0]= "You&dare&defy me?";
    if(mercymod > 80) global.msg[0]= "You\\'ve&pushed&your&luck.";
}
if(impress == 1) global.msg[0]= "That&takes&guts.";
impress= 0;
if(turnt == 0) {
    if(pickon == 0) global.msg[0]= "...&Don\\'t&pick on&me.";
    if(pickon == 1) global.msg[0]= "...&Pick on&me.";
    turnt= 1;
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
