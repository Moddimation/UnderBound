g= instance_create(x, y, blt_musbul1 );
alarm[0]= rate;
longnote++;
if(longnote == 12) {
    // obj_shyren
    with(259) caster_play(longnote[1], 1, 1);
}
if(longnote == 24) {
    // obj_shyren
    with(259) caster_play(longnote[0], 1, 1);
    longnote= 0;
}

/* */
/*  */
