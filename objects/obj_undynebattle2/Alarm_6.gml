blcon= instance_create(blconx, blcony, obj_blconwdflowey );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "...";
if(turnt == 0) global.msg[0]= "Show me what&you\\'ve got!";
if(turnt == 1) global.msg[0]= "Do your worst!";
if(turnt == 2) global.msg[0]= "What\\'s the&matter, scared?";
if(turnt == 3) global.msg[0]= "\\\\E6What the hell&is the holdup?";
if(turnt == 4) global.msg[0]= "COME ON ALREADY!";
if(turnt == 5) global.msg[0]= "IT\\'S GETTING&HOT IN HERE!";
turnt++;
global.msg[1]= "%%%";
global.typer= 41;
blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 17;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
