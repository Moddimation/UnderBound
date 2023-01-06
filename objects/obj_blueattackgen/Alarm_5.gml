if(!instance_exists(blt_sizebone ) && global.invc < 1) {
    global.msg[0]= " YOU\\'RE BLUE NOW./";
    global.msg[1]= " THAT\\'S MY ATTACK!/";
    global.msg[2]= " NYEH HEH HEH& HEH HEH HEH& HEH HEH HEH!!!/%%";
    global.typer= 22;
    blcon= instance_create(x + 145, y + 52, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    global.batmusic= global.batmusic2;
    alarm[6]= 2;
    obj_papyrusboss.dontcancel= 1;
} else  alarm[5]= 2;


/*  */
