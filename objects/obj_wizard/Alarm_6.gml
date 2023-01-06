blcon= instance_create(x + 125, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(mycommand < 20) global.msg[0]= "Abra&cadabra.";
if(mycommand >= 20) global.msg[0]= "Alakazam&!!";
if(mycommand >= 40) global.msg[0]= "Tinkle&tinkle&hoy.";
if(mycommand >= 60) global.msg[0]= "Hocus&pocus.";
if(mycommand >= 80) global.msg[0]= "Please&and&thank&you.";
if(mercymod == 300) {
    mercymod= 299;
    global.msg[0]= "Ah^1!&A fellow&wizard!";
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 17;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
