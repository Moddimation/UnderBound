blcon= instance_create(x + 95, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "(slime&sounds)";
if(mycommand < 75) global.msg[0]= "Shh...";
if(mycommand < 50) global.msg[0]= "Hsh...";
if(mycommand < 25) global.msg[0]= "Krr...";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
