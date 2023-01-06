checkx= x + 10;
checky= y + 20;
event_user(0);
mytile= thistile;
if(mytile == 0 && moving == 1) {
    if(moving == 1) global.facing= 1;
    if(moving == 3) global.facing= 3;
    moving= 0;
    speed= 0;
    obj_mainchara.visible= 1;
    obj_mainchara.phasing= 0;
    global.interact= 0;
    instance_destroy();
}
if(mytile == 1) moving= 0;
if(mytile == 3) {
    if(orange != 0) {
        snd_play(snd_bell );
        image_speed= 0;
        with(tileid) {
            af= instance_create(x, y, obj_genafterimage );
            af.sprite_index= spr_tilewhite ;
            af.depth= depth - 1;
        }
        image_blend= yblend;
    }
    orange= 0;
    mytile= 0;
    tileid2= tileid;
    if(moving == 1) {
        checkx= x + 30;
        checky= y + 20;
    }
    if(moving == 2) {
        checkx= x + 10;
        checky= y - 5;
    }
    if(moving == 3) {
        checkx= x - 10;
        checky= y + 20;
    }
    if(moving == 4) {
        checkx= x + 10;
        checky= y + 35;
    }
    event_user(0);
    mytile2= thistile;
    if(mytile2 != 0 && mytile2 != 2) {
        with(tileid2) {
            af= instance_create(x + 10, y + 10, obj_genafterimage );
            af.sprite_index= spr_tilearrow ;
            af.depth= depth - 2;
            af.image_angle= -90 + obj_tileguy.moving * 90;
            af.direction= -90 + obj_tileguy.moving * 90;
            af.image_alpha= 2;
            af.speed= obj_tileguy.speed / 3;
        }
        prevx= x;
        prevy= y;
    } else  moving= 0;
}
if(mytile == 4 && electrocute == 0) {
    snd_play(snd_shock );
    with(tileid) {
        ga= instance_create(x, y, obj_genanim );
        ga.sprite_index= spr_tileyellow_shock ;
        ga.image_speed= 1;
        if(sprite_index == 1752) ga.sprite_index= spr_tileyellow_shock_blue ;
    }
    electrocute= 1;
    alarm[5]= 10;
}
if(mytile == 5) {
    moving= 0;
    if(orange != 1) {
        image_blend= oblend;
        snd_play(snd_bell );
        with(tileid) {
            af= instance_create(x, y, obj_genafterimage );
            af.sprite_index= spr_tilewhite ;
            af.depth= depth - 1;
        }
    }
    orange= 1;
}
if(mytile == 6) {
    if(orange == 1) {
        if(electrocute == 0) {
            pir++;
            dogchance= 0;
            if(pir > 8) dogchance= random(5);
            if(dog == 1) dogchance= 0;
            with(tileid) {
                ga= instance_create(x, y, obj_genanim );
                ga.sprite_index= spr_pirahna_anim_wip ;
                if(obj_tileguy.dogchance > 4) {
                    ga.sprite_index= spr_emergentdog ;
                    obj_tileguy.dog= 1;
                }
                ga.image_speed= 1;
            }
            snd_play(snd_b );
            electrocute= 1;
            alarm[5]= 2;
        }
    } else  moving= 0;
}
if(mytile == 7) {
    with(tileid) {
        af= instance_create(x, y, obj_genafterimage );
        af.sprite_index= spr_tilewhite ;
        af.depth= depth - 1;
    }
    global.flag[289]= 1;
    snd_play(snd_yeah );
    moving= 0;
}

/* */
/*  */
