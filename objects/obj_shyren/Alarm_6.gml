blcon= instance_create(x + 95, y - 25, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "....&....&toot&....";
if(mycommand >= 50) global.msg[0]= "....&....&hum hum";
if(encourage == 1) global.msg[0]= "si re,&si re&si mi&si mi";
if(encourage == 2) global.msg[0]= "Si Fa&Si Fa&So Fa So&Mi Re Re";
if(encourage == 3) global.msg[0]= "Mi So&Mi So&Mi Si Mi&La Si So";
if(encourage == 4) global.msg[0]= "(agg-&ressive&tooting)";
if(encourage == 5) global.msg[0]= "(final&toot)";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
