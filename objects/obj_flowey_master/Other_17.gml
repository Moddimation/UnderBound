global.damage= 5;
if(global.soul_rescue == 0) global.damage= 1;
if(global.soul_rescue == 1) global.damage= 3 + floor(random(3));
if(global.soul_rescue == 2) global.damage= 10 + floor(random(3));
if(global.soul_rescue == 3) global.damage= 14 + floor(random(3));
if(global.soul_rescue == 4) global.damage= 18 + floor(random(4));
if(global.soul_rescue == 5) global.damage= 23 + floor(random(4));
if(global.soul_rescue >= 6) {
    global.damage= 150 + floor(random(70));
    if(megadamage == 1) global.damage= 250 + floor(random(21));
    if(megadamage == 2) global.damage= 360 + floor(random(21));
    if(megadamage == 3) global.damage= 700 + floor(random(21));
    if(megadamage == 4) global.damage= 1200 + floor(random(21));
    if(megadamage == 8) global.damage= 6000;
}
if(global.damage > 100) {
    // obj_floweyx_tv
    with(1587) event_user(1);
    knockfactor= 6;
    alarm[11]= 1;
} else  {
    // obj_floweyx_tv
    with(1587) event_user(2);
}
global.floweyhp-= global.damage;
if(global.damage < 100) snd_play(snd_damage_c );
else  snd_play(snd_heavydamage );
dd= instance_create(100, 140, obj_floweydmgwriter );
dd.alarm[2]= 60;
if(global.floweyhp <= 0) {
    // obj_flowey_fightbt
    with(1596) instance_destroy();
    // obj_fx_bgen
    with(1583) instance_destroy();
    // obj_flowey_bulletmaster
    with(1584) instance_destroy();
    // obj_floweybullet_parent
    with(1627) instance_destroy();
    caster_stop(-3);
    snd_play(snd_heavydamage );
    dd.alarm[2]= -1;
    dcon= 1;
    alarm[4]= 30;
}


/*  */
