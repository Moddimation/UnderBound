instance_create(0, 0, obj_gameoverbg );
alarm[3]= 80;
ll= global.floss + 1;
ini_open("undertale.ini");
ini_write_real("FFFFF", "D", ll);
ini_close();
if(ll > 2) game_end();
else  {
    gm1= caster_loop(gmusic, 0.45, 1);
    caster_set_panning(gm1, 0.25);
    gm2= caster_loop(gmusic, 0.45, 1);
    caster_set_panning(gm2, 0.5);
    gm3= caster_loop(gmusic, 0.45, 1);
    caster_set_panning(gm3, 0.75);
}

/* */
/*  */
