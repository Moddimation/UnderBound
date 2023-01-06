if(whatiheard == 7) {
    talked= 0;
    whatiheard= -1;
    global.mnfight= 2;
    global.border= 7;
    alarm[5]= -2;
    if(instance_exists(blt_temhand )) {
        // blt_temhand
        with(671) instance_destroy();
    }
    obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
    obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
} else  {
    blcon= instance_create(x + 95, y - 25, obj_blconsm );
    gg= floor(random(3));
    mycommand= round(random(100));
    if(mycommand >= 0) global.msg[0]= "awwAwa&cute!!&(pets u)";
    if(mycommand > 25 && mycommand < 50) {
        global.msg[0]= "OMG!!&humans&TOO CUTE&(dies)";
        with(mypart1) instance_destroy();
        image_index= 1;
    }
    if(mycommand >= 50) global.msg[0]= "hOI!!!&i\\'m&TEMMIE!!";
    if(mycommand >= 75) global.msg[0]= "fhsdhjf&dsfjsd&dshjfsd";
    if(whatiheard == 3)
        global.msg[0]= "NO!!!!!&muscles&......&NOT CUTE";
    if(whatiheard == 1) {
        global.msg[0]= "NO!!!&so&hungr...&(dies)";
        with(mypart1) instance_destroy();
        image_index= 1;
    }
    if(whatiheard == 4) global.msg[0]= "hOI!!!&i\\'m&tEMMIE!!";
    if(whatiheard == 6) {
        global.msg[0]= "FOOB!!!";
        mercymod= 300;
    }
    global.msg[1]= "%%%";
    global.typer= 2;
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    global.border= 6;
    obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
    obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
    global.heard= 0;
}

/* */
/*  */
