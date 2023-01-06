gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "But&nobody&came.";
if(mycommand < 75) global.msg[0]= "Do you&think&I\\'m&pretty?";
if(mycommand < 50) global.msg[0]= "That\\'s&what&they all&say.";
if(mycommand < 25) global.msg[0]= "Stay&here&with&me...";
if(turns == 0) {
    global.msg[0]= "Welcome&to my&special&hell.";
    turns= 1;
    mycommand= 20;
}
if(turns == 2) global.msg[0]= "...";
if(mercymod > 50000 && turns == 1) {
    global.msg[0]= "Life\\'s&flashing&before&my teeth";
    global.msg[0]= "I\\'ve&felt&this&before.";
    turns= 2;
}
global.msg[1]= "%%%";
global.typer= 2;
bx= 0;
by= 0;
repeat(2)  {
    bx= 0;
    repeat(6)  {
        blcon= instance_create(10 + bx, 10 + by, obj_blconsm );
        blcon.depth= 20;
        blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
        blconwd.depth= 10;
        bx+= 101;
    }
    by+= 119;
}
global.border= 5;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
