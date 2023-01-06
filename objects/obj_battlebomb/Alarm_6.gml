blcon= instance_create(200, 100, obj_blconwdflowey );
blcon.sprite_index= spr_blcontiny ;
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "Tick.";
if(mycommand < 75) global.msg[0]= "Tock.";
if(mycommand < 50) global.msg[0]= "Tick.";
if(mycommand < 25) global.msg[0]= "Tock.";
if(bombtype == 1) global.msg[0]= "Zzz...";
if(bombtype == 2) global.msg[0]= "Swish.";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );


/*  */
