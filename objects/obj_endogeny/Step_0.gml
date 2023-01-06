if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 20;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
        mypart1.pause= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
        killed= 1;
        instance_destroy();
    }
}
if(global.hurtanim[myself] == 5) {
    global.damage= 0;
    instance_create(x + sprite_width / 2 - 48, y - 24, obj_dmgwriter );
    // obj_dmgwriter
    with(189) alarm[2]= 30;
    global.myfight= 0;
    global.mnfight= 1;
    global.hurtanim[myself]= 0;
}
if(global.mnfight == 2) {
    if(attacked == 0) {
        pop= scr_monstersum();
        global.turntimer= 200;
        global.firingrate= 10;
        if(pop == 3) global.firingrate*= 2.5;
        if(pop == 2) global.firingrate*= 1.8;
        if(mycommand >= 50) {
            gen= instance_create(0, 0, obj_amalgam_rocketdog );
            gen.dmg= global.monsteratk[myself];
        } else  {
            gen= instance_create(0, 0, obj_amalgam_laserdog );
            gen.dmg= global.monsteratk[myself];
            if(turns == 1) {
                with(gen) {
                    con= 4;
                    image_index= 7;
                }
            }
        }
        turns= 1;
        if(mycommand >= 0)
            global.msg[0]= "* Amalgamate is watching you&  intently.";
        if(mycommand >= 45)
            global.msg[0]= "* Amalgamate is waiting for&  your command.";
        if(mycommand >= 90)
            global.msg[0]= "* It smells like a bunch of dogs.";
        if(close == 1)
            global.msg[0]= "* Amalgamate is hovering close^1,&  looking for affection.";
        if(pet == 1)
            global.msg[0]= "* Amalgamate is striking the&  wall with its claws.";
        if(pet == 2)
            global.msg[0]= "* Amalgamate is twitching&  affectionately.";
        if(pet == 3)
            global.msg[0]= "* Amalgamate\\'s convulsions&  intensify.";
        if(pet == 4) {
            global.msg[0]= "* Endogeny is contented.";
            global.monstername[myself]= "Endogeny";
        }
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* Monster has low HP.";
        if(mercymod == 999999) {
            global.msg[0]= "* Endogeny is contented.";
            global.monstername[myself]= "Endogeny";
        }
        attacked= 1;
    }
    if(mercymod == 999999) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* AMALGAMATE - It\\'s unclear how&  many dogs this counts as./^";
        if(mercymod == 999999)
            global.msg[0]= "* ENDOGENY - It\\'s unclear how&  many dogs this counts as./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        if(close == 1)
            global.msg[0]= "* The Amalgamate\\'s feelers&  rotate quickly^1.&* Nothing else happens./^";
        if(close == 0) {
            global.msg[0]= "* You call the Amalgamate./";
            global.msg[1]= "* It bounds towards you^1,&  flecking a strange liquid&  from an orifice./^";
            mypart1.mouthspeed= 0.1;
            caster_set_pitch(global.batmusic, 0.9);
            close= 1;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 2) {
        global.msc= 0;
        global.msg[0]= "* You try looking away^1, but&  it seems to appear everywhere&  you look./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You pet the Amalgamate./^";
        if(pet == 4)
            global.msg[0]= "* You\\'d give it a tummy rub^1,&  but it\\'s not clear where its&  tummy begins or ends./^";
        if(pet == 3) {
            pet= 4;
            global.msg[0]= "* You pet decisively^1.&* The Amalgamate seems to be&  satisfied by all this./^";
            caster_set_volume(global.batmusic, 0.3);
            caster_set_pitch(global.batmusic, 0.8);
            caster_loop(dogsong, 0.8, 0.8);
            mypart1.spared= 1;
            global.sp= obj_battlecontroller.tempspd;
            mercymod= 999999;
            global.flag[156]= 1;
        }
        if(pet == 2) {
            global.msg[0]= "* You pet the Amalgamate^1.&* It starts to generate a&  Stage I Happiness Froth./^";
            caster_set_pitch(global.batmusic, 1.2);
            mypart1.mouthspeed= 1;
            mypart1.shaker= 4;
            pet= 3;
        }
        if(pet == 1) {
            global.msg[0]= "* You try to pet the&  Amalgamate but your hand&  phases through it./";
            global.msg[1]= "* It must not want to be pet&  for now./^";
        }
        if(close == 1 && pet == 0) {
            global.msg[0]= "* You pet the Amalgamate^1.&* It convulses rapidly..^1.&* Then calms down./";
            global.msg[1]= "* It rests quietly on your&  lap for a moment.../";
            global.msg[2]= "* Zzzzz.../";
            global.msg[3]= "* Suddenly^1, it shoots away and&  crawls wildly on the walls!/^";
            mypart1.mouthspeed= 0.2;
            mypart1.shaker= 1;
            caster_set_pitch(global.batmusic, 1);
            pet= 1;
        }
        if(close == 0)
            global.msg[0]= "* Amalgamate is too far&  away to pet^1.&* You just pet the air./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You play with the Amalgamate./^";
        if(pet > 1)
            global.msg[0]= "* Amalgamate seems too tired&  to play./^";
        if(pet == 1) {
            global.msg[0]= "* You throw your weapon into&  the corner of the room./";
            global.msg[1]= "* The Amalgamate brings it back&  to you..^1.&* Proudly?/";
            global.msg[2]= "* You repeat this process a&  few times./";
            global.msg[3]= "* Now Amalgamate is very tired..^1.&* It leans its dripping^1,&  amorphous body on you.../^";
            pet= 2;
            mypart1.mouthspeed= 0.5;
            mypart1.shaker= 2;
            caster_set_pitch(global.batmusic, 1.1);
        }
        if(pet == 0)
            global.msg[0]= "* Amalgamate is not excited&  enough to play with...?/^";
        global.msc= 0;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}


/*  */
