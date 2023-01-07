ini_open("undertale.ini");
gs= ini_read_real("General", "Gameover", 0);
ini_write_real("General", "Gameover", gs + 1);
ini_close();
if(gs == 0) {
    global.typer= 30;
    global.msg[0]= "  You cannot give&  up just yet.../";
    global.msg[1]= "  " + global.charname + "^1!&  Stay determined.../%%";
}
if(gs > 0 && global.kills == 0) {
    global.typer= 32;
    gg= floor(random(8));
    if(gg == 0) {
        global.msg[0]= "  " + global.charname + ", this is just&  a bad dream.../";
        global.msg[1]= "  Wake up^1!&  It\\'s not over!/%%";
    }
    if(gg == 1) {
        global.msg[0]= "  " + global.charname + "! It\\'s like&  he says.../";
        global.msg[1]= "  You have to&  stay determined.../%%";
    }
    if(gg == 2) {
        global.msg[0]= "  " + global.charname + "! Please&  don\\'t give up.../";
        global.msg[1]= "  Have some&  determination.../%%";
    }
    if(gg == 3) {
        global.msg[0]= "  " + global.charname + "! You\\'re&  " + global.charname + "!/";
        global.msg[1]= "  You can\\'t quit^1!&  Stay determined.../%%";
    }
    if(gg == 4) {
        global.msg[0]= "  " + global.charname + ", is this&  a kind of joke?/";
        global.msg[1]= "  Cut it out^1!&  Wake up!/%%";
    }
    if(gg == 5) {
        global.msg[0]= "  " + global.charname + ", it\\'s not&  time to leave!/";
        global.msg[1]= "  Hold on!/%%";
    }
    if(gg == 6) {
        global.msg[0]= "  " + global.charname + ", gather&  your strength./";
        global.msg[1]= "  Stay determined!/%%";
    }
    if(gg == 7) {
        global.msg[0]= "  " + global.charname + ", you have&  to keep going./";
        global.msg[1]= "  Stay determined!/%%";
    }
}
if(gs > 0) {
    global.typer= 30;
    gg= floor(random(5));
    if(gg == 0) {
        global.msg[0]= "  You cannot give&  up just yet.../";
        global.msg[1]= "  " + global.charname + "^1!&  Stay determined.../%%";
    }
    if(gg == 1) {
        global.msg[0]= "  Our fate rests &  upon you.../";
        global.msg[1]= "  " + global.charname + "^1!&  Stay determined.../%%";
    }
    if(gg == 2) {
        global.msg[0]= "  You\\'re going to&  be alright!/";
        global.msg[1]= "  " + global.charname + "^1!&  Stay determined.../%%";
    }
    if(gg == 3) {
        global.msg[0]= "  Don\\'t lose hope!/";
        global.msg[1]= "  " + global.charname + "^1!&  Stay determined.../%%";
    }
    if(gg == 4) {
        global.msg[0]= "  It cannot end&  now!/";
        global.msg[1]= "  " + global.charname + "^1!&  Stay determined.../%%";
    }
}
if(global.flag[272] == 1) {
    global.typer= 110;
    global.msg[0]= "  geeettttttt&  dunked on!!!/";
    global.msg[1]= "  if we\\'re really&  friends.../";
    global.msg[2]= "  you won\\'t come back./%%";
}
dingus= 1;
script_execute(SCR_TEXTTYPE , global.typer);
global.msc= 0;
instance_create(100, 300, OBJ_WRITER );


/*  */
