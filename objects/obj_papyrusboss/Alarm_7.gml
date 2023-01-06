if(bonetalk == 0) {
    global.msg[0]= " WHAT THE HECK!/";
    global.msg[1]= " THAT\\'S MY& SPECIAL ATTACK!/%%";
    global.typer= 22;
    blcon= instance_create(x + 145, y + 52, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    bonetalk= 1;
}
if(bonetalk == 1 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= " HEY^1!& YOU STUPID DOG!/%%";
    global.typer= 22;
    blconwdS= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    bonetalk= 2;
    blt_tobydogbone.sprite_index= spr_tobydogsurprise ;
    blt_tobydogbone.image_index= 0;
    blt_tobydogbone.image_speed= 0;
}
if(bonetalk == 2 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= " DO YOU HEAR& ME!?/";
    global.msg[1]= " STOP MUNCHING ON& THAT BONE!!!/%%";
    global.typer= 22;
    blconwdS= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    bonetalk= 3;
    blt_tobydogbone.image_index= 1;
}
if(bonetalk == 3 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= " HEY!!!& WHAT ARE YOU& DOING!!!/";
    global.msg[1]= " COME BACK HERE& WITH MY SPECIAL& ATTACK!!!/%%";
    global.msg[2]= " .../";
    global.msg[3]= " OH WELL./%%";
    global.typer= 22;
    blconwdS= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    bonetalk= 4;
    blt_tobydogbone.image_speed= 0.2;
    blt_tobydogbone.sprite_index= spr_tobydogscoot ;
    blt_tobydogbone.hspeed= 1;
}
if(bonetalk == 4 && !instance_exists(OBJ_WRITER )) {
    global.border= 5;
    global.msg[0]= " .../";
    global.msg[1]= " OH WELL./";
    global.msg[2]= " I\\'LL JUST USE& A REALLY COOL& REGULAR ATTACK./%%";
    global.typer= 22;
    blconwdS= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    bonetalk= 5;
}
alarm[7]= 2;
if(bonetalk == 5 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Papyrus is getting ready&  for a regular attack.";
    with(blcon) instance_destroy();
    // blt_tobydogbone
    with(639) instance_destroy();
    dontcancel= 0;
    alarm[7]= -2;
}

/* */
/*  */
