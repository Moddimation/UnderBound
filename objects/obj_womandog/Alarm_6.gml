blcon= instance_create(x + 224, y + 52, obj_blconsm );
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "(...)";
if(instance_exists(obj_mandog )) {
    m= 245;
    if(m.mycommand >= 0 && m.mycommand < 25)
        global.msg[0]= "(Don\\'t,&actually&...)";
    if(m.mycommand >= 25 && m.mycommand < 50)
        global.msg[0]= "(He&means&me.)";
    if(m.mycommand >= 50 && m.mycommand < 75)
        global.msg[0]= "(Of&course&we were&second.)";
    if(m.mycommand >= 75 && m.mycommand <= 100)
        global.msg[0]= "(Do&humans&have&tails?)";
}
if(instance_exists(obj_mandog )) {
    if(whatiheard == 1 || obj_mandog.whatiheard == 1) {
        global.msg[0]= "(Smell&mystery)";
        if(smell > 0) global.msg[0]= "(Are you&actually&a little&puppy!?)";
    }
    if(whatiheard == 3) {
        if(smell < 2) global.msg[0]= "(Beware&of&dog.)";
        else  global.msg[0]= "(A dog&that pets&dogs...&Amazing!)";
    }
    if(obj_mandog.whatiheard == 3) {
        if(smell < 2) global.msg[0]= "(That\\'s&not your&husband,&OK?)";
        if(smell >= 2) global.msg[0]= "(Well.&Don\\'t&leave me&out!)";
    }
}
if(scr_monstersum() == 1) {
    mercymod= -1000;
    if(mycommand < 33) global.msg[0]= "(Misery&awaits&you.)";
    if(mycommand >= 33) global.msg[0]= "(Kneel&and&suffer!)";
    if(mycommand >= 66) global.msg[0]= "(I\\'ll&chop you&in&half!)";
    global.monsterdef[myself]= -8;
}
global.msg[1]= "%%%";
global.typer= 2;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;

/* */
/*  */
