buffer--;
restart--;
if(active == 1 && win == 0 && buffer <= 0) {
    blt= 0;
    if(instance_exists(obj_shotguy )) blt= 1;
    if(keyboard_multicheck_pressed(0) && ammo > 0 && buffer <= 0) {
        ammo--;
        buffer= 4;
        instance_create(x, y, obj_shotguy );
    }
    if(keyboard_check_pressed(39) && blt == 0 && buffer <= 0) {
        buffer= 4;
        event_user(0);
    }
    if(keyboard_check_pressed(37) && blt == 0 && buffer <= 0) {
        buffer= 4;
        event_user(1);
    }
    if(keyboard_check_pressed(38) && blt == 0 && buffer <= 0) {
        buffer= 4;
        event_user(2);
    }
    if(keyboard_check_pressed(40) && blt == 0 && buffer <= 0) {
        buffer= 4;
        event_user(3);
    }
    if(keyboard_multicheck_pressed(1) && buffer <= 0 && !instance_exists(1243)) {
        active= 0;
        alarm[2]= 2;
        alarm[1]= 12;
        buffer= 15;
        alarm[3]= 1;
    }
    if(ammo == 0 && !instance_exists(obj_shotguy ) && buffer <= 0 && active == 1 && instance_exists(obj_targetguy ) && obj_targetguy.defeat == 0) {
        restart= 20;
        rstype= random(100);
        buffer= 20;
        alarm[2]= 2;
        alarm[1]= 12;
    }
}
if(myinteract == 1 && win == 0) {
    ammo= 0;
    buffer= 10;
    alarm[5]= 1;
    global.interact= 1;
    myinteract= 2;
    global.facing= 2;
    active= 1;
}
snd= 0;
if(win == 1 && active == 1) {
    wintimer++;
    if(wintimer == 50) snd_play(snd_dumbvictory );
    if(wintimer > 100) {
        if(room == 152) global.flag[375]= 1;
        if(room == 150) global.flag[374]= 1;
        if(room == 173) global.flag[399]= 1;
        if(room == 175) global.flag[400]= 1;
        if(room == 205) global.flag[418]= 1;
        global.interact= 0;
        wintimer= 0;
        win= 2;
        myinteract= 0;
        global.facing= 0;
        active= 0;
        scr_tempsave();
    }
}

/* */
/*  */
