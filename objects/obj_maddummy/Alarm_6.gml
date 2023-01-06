global.typer= 33;
blcontype= 0;
if(con != 5) {
    gg= floor(random(3));
    mycommand= round(random(100));
    if(mycommand >= 0 && mycommand < 25)
        global.msg[0]= "Foolish.&Foolish!&FOOLISH!";
    if(mycommand >= 25) global.msg[0]= "Futile.&Futile!&FUTILE!";
    if(mycommand >= 50) global.msg[0]= "Pitiful.&Pitiful!&PITIFUL!";
    if(mycommand >= 75) global.msg[0]= "Feeble.&Feeble!&FEEBLE!";
    if(con3 > 0 && con3 < 8) {
        if(con3 == 1)
            global.msg[0]= " I\\'ll defeat you and& take your SOUL!";
        if(con3 == 2)
            global.msg[0]= " I\\'ll use your SOUL& to cross the barrier!";
        if(con3 == 3)
            global.msg[0]= " I\\'ll stand in the& window of a fancy& store!";
        if(con3 == 4)
            global.msg[0]= "\\\\E3 THEN EVERYTHING I& WANT WILL BE MINE!";
        if(con3 == 5)
            global.msg[0]= "\\\\E2 Huh?& Yeah, I guess& that\\'ll avenge my& cousin.";
        if(con3 == 6) global.msg[0]= "\\\\E0 What was their name& again...?";
        if(con3 == 7) global.msg[0]= " Whatever.& Whatever!& WHATEVER!!";
        blcontype= 1;
    }
    if(con2 > 13 && con2 <= 117.5) {
        if(con2 == 14) global.msg[0]= "DUMMY&BOTS!&MAGIC&MISSILE!";
        if(con2 == 15) global.msg[0]= "DUMMY&BOTS!&TRY&AGAIN!";
        if(con2 == 16) global.msg[0]= "DUMMY&BOTS!&You\\'re&awful???";
        if(con2 == 17.5) global.msg[0]= "DUMMY&BOTS!&FINAL&ATTACK!";
        blcontype= 0;
    }
    con3++;
    if(blcontype == 0)
        blcon= instance_create(xstart + 95, ystart - 25, obj_blconsm );
    if(blcontype == 1)
        blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
} else  {
    if(con == 5) {
        mycommand= round(random(100));
        caster_resume(global.batmusic);
        global.typer= 33;
        global.faceemotion= 2;
        global.msg[0]= " (Wait^1, is DUMMY& a compliment...?)";
        blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
        blcontype= 1;
        con= 6;
    }
}
global.msg[1]= "%%%";
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 6;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;


/*  */
