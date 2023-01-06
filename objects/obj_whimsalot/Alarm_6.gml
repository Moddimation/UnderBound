blcon= instance_create(x + 100, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 30)
    global.msg[0]= "No&regrets.";
if(mycommand >= 30 && mycommand < 50)
    global.msg[0]= "I\\'ve&made my&choice.";
if(mycommand >= 50 && mycommand < 80)
    global.msg[0]= "Not this&time.";
if(mycommand >= 80 && mycommand <= 100)
    global.msg[0]= "*Shine&shine*";
if(whatiheard == 1) global.msg[0]= "I\\'m not&afraid&of you.";
if(whatiheard == 3) global.msg[0]= "I\\'ve&made&my&peace.";
if(whatiheard == 4) {
    if(mycommand < 50) global.msg[0]= "Don\\'t&give&up!";
    else  global.msg[0]= "There\\'s&still&hope.";
}
if(impress == 1) global.msg[0]= "Courage&...";
impress= 0;
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
