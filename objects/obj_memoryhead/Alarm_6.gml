blcon= instance_create(x + 95, y - 10, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
if(coherent == 1) {
    global.msg[0]= "Come&join&the&fun.";
    if(mycommand < 75) global.msg[0]= "It\\'s a&real&get&together";
    if(mycommand < 50) global.msg[0]= "Lorem&ipsum&docet";
    if(mycommand < 25) global.msg[0]= "Become&one of&us!";
    if(turns == 0) global.msg[0]= "Come&join&the&fun.";
    turns++;
}
if(whatiheard == 1) {
    global.msg[0]= "That\\'s&a&shame.";
    if(mycommand > 33) global.msg[0]= "Oh&well.";
    if(mycommand > 66) global.msg[0]= "Be&seeing&you.";
}
if(whatiheard == 3) {
    global.msg[0]= "Then,&hold&still.";
    if(mycommand > 33) global.msg[0]= "Just&a&moment.";
    if(mycommand > 66) global.msg[0]= "You\\'ll&be with&us&shortly.";
}
global.msg[1]= "%%%";
global.typer= 2;
if(coherent == 1)
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
else  {
    sq= instance_create(blcon.x + 15, blcon.y + 10, obj_insanesq );
    dd= floor(random(6));
    dnoise= caster_loop(ds[dd], 0.3, 0.9 + random(0.2));
    caster_set_panning(dnoise, 0.1 + random(0.8));
}
global.border= 5;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
