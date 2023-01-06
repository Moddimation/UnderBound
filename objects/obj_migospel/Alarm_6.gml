blcon= instance_create(x + 95, y, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(sad == 0) {
    global.msg[0]= "Ha ha&hee hee&ho ho&huu huu!";
    if(mycommand < 75) global.msg[0]= "Honk!&HOOONK!";
    if(mycommand < 50) global.msg[0]= "(Mime&noises)";
    if(mycommand < 25) global.msg[0]= "They\\'re&coming.";
    if(whatiheard == 3) global.msg[0]= "I love&to&laugh!";
}
if(sad == 1) {
    global.msg[0]= "Send in&the&clowns.";
    if(mycommand < 75) global.msg[0]= "Everyone&has&gone.";
    if(mycommand < 50) global.msg[0]= "They&cannot&worry&for me.";
    if(mycommand < 25)
        global.msg[0]= "Don\\'t&let them&see me&this way.";
    if(whatiheard == 3) global.msg[0]= "Laughter&hides&the&pain.";
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
