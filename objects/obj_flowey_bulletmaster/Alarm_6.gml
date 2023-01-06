if(global.battlephase == 6) {
    unhinged= 1;
    maxtimer= 9999999;
    // obj_flowey_master
    with(1585) {
        megadamage= 1;
        mustype= 5;
        caster_loop(mus_finale3, 1, 1);
    }
    alarm[7]= 900;
    // obj_floweybodyparent
    with(1586) {
        desperate= 1;
        wimpy= 0;
    }
}

