if(global.monsterhp[myself] - takedamage <= 500) {
    dmgwriter= instance_create(x, y + 150, obj_dmgwriter );
    global.fivedamage= global.monsterhp[myself] - 30;
    if(global.fivedamage <= 0) global.fivedamage= 1;
    with(dmgwriter) dmg= global.fivedamage;
    instance_create(128, 46, obj_asgore_lastcutscene );
    caster_free(-3);
    obj_purplegradienter.fade= 1;
    // obj_orangeparticlegen
    with(484) instance_destroy();
    snd_play(snd_damage );
    with(mypart1) instance_destroy();
    // obj_asgorespear
    with(489) instance_destroy();
    instance_destroy();
} else  {
    if(mypart1.pause != 1) {
        dmgwriter= instance_create(x, y + 150, obj_dmgwriter );
        global.damage= takedamage;
        with(dmgwriter) dmg= global.damage;
        mypart1.pause= 1;
        snd_play(snd_damage );
        alarm[8]= 11;
    }
    if(sha == 0) sha= x;
    x= sha + shudder;
    if(shudder < 0) shudder= -(shudder + 1);
    else  shudder= -shudder;
    if(shudder == 0) {
        sha= 0;
        global.hurtanim[myself]= 2;
        exit;
    } else  alarm[3]= 2;
}


/*  */
