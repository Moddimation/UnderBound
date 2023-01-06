if(con2 == 0) {
    next= 0;
    con2= 1;
    talko= 3;
    global.typer= 33;
    global.msg[0]= "\\\\E1OWWWW^1, you&DUMMIES!!/";
    global.msg[1]= "\\\\XWatch where you\\'re&aiming your \\\\RMAGIC\\\\X &attacks!/";
    global.msg[2]= "\\\\E3.../";
    global.msg[3]= "\\\\XHey^1!&You^1! \\\\E2Forget&I said anything&about \\\\RMAGIC\\\\X!!!/%%";
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
}


/*  */
