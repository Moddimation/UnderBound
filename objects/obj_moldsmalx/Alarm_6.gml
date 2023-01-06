blcon= instance_create(x + sprite_width - 8, ystart - 20, obj_blconsm );
mycommand= round(random(100));
if(mycommand >= 0 && mycommand < 30) global.msg[0]= "Guoooh!";
if(mycommand >= 25 && mycommand < 50) global.msg[0]= "Roar.";
if(mycommand >= 50 && mycommand < 80)
    global.msg[0]= "*Slime&sounds*";
if(mycommand >= 75 && mycommand <= 100)
    global.msg[0]= "*Chaste&wiggle*";
if(stage == 0) {
    global.msg[0]= "...";
    if(whatiheard == 1 || whatiheard == 3) {
        stage= 1;
        visible= 0;
        with(mypart1) instance_destroy();
        mypart1= instance_create(x, y, part1);
        mypart1.stage= stage;
        global.msg[0]= "Guoooh!";
    }
}
if(stage == 1) global.monstername[myself]= "Moldbygg";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 3;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
