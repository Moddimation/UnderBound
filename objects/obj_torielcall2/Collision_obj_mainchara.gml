if(global.interact == 0) {
    snd_play(snd_phone );
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    ini_open("undertale.ini");
    bs= ini_read_real("Toriel", "Bscotch", 0);
    ini_close();
    if(bs == 0) script_execute(scr_writetext , 222, "x", 0, 0);
    else  script_execute(scr_writetext , 831, "x", 0, 0);
    global.interact= 1;
}

/* */
/*  */
