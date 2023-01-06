blcon= instance_create(x + 110, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "Default";
if(talkt == 0) global.msg[0]= "You hate&me^1,&don\\'t&you...?";
if(talkt == 1) global.msg[0]= "I\\'ve got&to keep&lying...";
if(talkt == 2) global.msg[0]= "All I do&is hurt&people.";
if(talkt == 2) talkt= 0;
if(talkt == 1) talkt= 2;
if(talkt == 0) talkt= 1;
if(turns == 0) turns= 1;
else  turns= 0;
global.msg[1]= "%%%";
global.typer= 74;
blconwd= instance_create(blcon.x + 22, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 24;
if(turns == 0) global.border= 26;
if(turns == 1) global.border= 24;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
