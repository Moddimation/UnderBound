blcon= instance_create(x + 95, y - 25, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "Come on&in, the&water\\'s&fine ; )";
if(mycommand >= 25)
    global.msg[0]= "No need&for a&swimming&suit ; )";
if(mycommand >= 50) global.msg[0]= "Edu-&cation?&Hobby?&Talent?";
if(mycommand >= 75) global.msg[0]= "Whew,&I\\'m&sweating&; )";
if(global.flag[95] == 1) {
    if(mycommand >= 0 && mycommand < 25)
        global.msg[0]= "Don\\'t&get too&close&; )";
    if(mycommand >= 25) global.msg[0]= "Sure&isn\\'t&creepy&out ; )";
    if(mycommand >= 50) global.msg[0]= "I sure&do love&muscles&; )";
    if(mycommand >= 75) global.msg[0]= "Whew,&I\\'m&sweating&; )";
}
if(whatiheard == 3) {
    global.msg[0]= "Flagrant&error&; )";
    if(flex == 1) global.msg[0]= "Flexing&contest?&OK, flex&more ; )";
    if(flex == 2) global.msg[0]= "Nice!!&I won\\'t&lose&tho ; )";
}
if(whatiheard == 1) {
    if(gg == 0) global.msg[0]= "Fiesty,&huh?&; )";
    if(gg == 1) global.msg[0]= "Wow!&Spunky!&Love it&; )";
    if(gg == 2) global.msg[0]= "You\\'ll&change&your&mind ; )";
}
if(whatiheard == 9) {
    global.msg[0]= "CHECK&all you&want ; )";
    if(global.flag[95] == 1) global.msg[0]= "... ; )";
}
if(whatiheard == 12)
    global.msg[0]= "Ha, nice.&My kind&of humor&; )";
if(alphaup == 1) global.msg[0]= "Just the&two of&us, huh?&; )";
if(alphaup == 1 && global.flag[95] == 1) global.msg[0]= "Hi?&; )";
alphaup= 0;
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
