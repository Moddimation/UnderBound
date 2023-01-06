blcon= instance_create(x + sprite_width - 8, ystart + 8, obj_blconsm );
mycommand= round(random(100));
if(global.turn == 0) mycommand= 10;
if(global.turn == 1) mycommand= 90;
if(mycommand >= 0 && mycommand < 25)
    global.msg[0]= "(Pant&pant)";
if(mycommand >= 25 && mycommand < 50)
    global.msg[0]= "(Wag&wag)";
if(mycommand >= 50 && mycommand <= 75)
    global.msg[0]= "(Thinks&of&food)";
if(mycommand >= 75 && mycommand <= 100)
    global.msg[0]= "(Tiny&bark)";
if(mercymod == 102) {
    mercymod= 103;
    global.msg[0]= "(Pants&fast)";
}
if(mercymod > 10) global.monsterdef[myself]= -100;
if(mercymod > 90) global.msg[0]= "(Pant!&Pant!)";
if(mercymod > 190) global.msg[0]= "(Excited&noises)";
if(mercymod > 340) global.msg[0]= "(Motor&revving)";
if(mercymod > 390) global.msg[0]= "(Plane&takeoff)";
if(mercymod > 440) global.msg[0]= "(Kettle&whistle)";
if(mercymod > 490) global.msg[0]= "(...)";
if(mercymod > 540) global.msg[0]= "(Faraway&bark)";
if(mercymod > 590) global.msg[0]= "(...)";
if(mercymod > 640) global.msg[0]= "(Bark)";
if(mercymod > 690) global.msg[0]= "(Pant&pant)";
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
