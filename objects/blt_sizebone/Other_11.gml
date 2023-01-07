if(active == 1) {
    hit= 1;
    if(blue == 1 && scr_blueat() == 0) hit= 0;
    if(global.invc < 1 && hit == 1) {
        dmgamt= round(dmg - (global.df + global.adef) / 5);
        if(dmgamt < 3) dmgamt= 3;
        if(global.hardmode == 0 && instance_exists(obj_papyrusboss ) && obj_papyrusboss.fighto > 13) {
            if(global.hp < 10) dmgamt--;
            if(global.hp < 5) dmgamt--;
        }
        global.hp-= dmgamt;
        global.invc= global.inv * 3;
        if(!instance_exists(obj_ripoff_papyrus )) {
            if(global.hp > 0) {
                snd_play(snd_hurt1 );
                global.hshake= 2;
                global.shakespeed= 2;
                global.vshake= 2;
                instance_create(0, 0, obj_shaker );
                instance_destroy();
            } else  {
                if(captured == 0) {
                    snd_play(snd_hurt1 );
                    global.hshake= 2;
                    global.shakespeed= 2;
                    global.vshake= 2;
                    instance_create(0, 0, obj_shaker );
                    visible= 0;
                    global.hp= 1;
                    captured= 1;
                    global.turntimer= 300;
                    // obj_papyrusboss
                    with(232) dontcancel= 1;
                    global.invc= 50;
                    hspeed= 0;
                    if(instance_exists(blt_sizebone )) {
                        blt_sizebone.active= 2;
                        blt_sizebone.visible= 0;
                    }
                    if(instance_exists(blt_topbone )) {
                        blt_topbone.active= 2;
                        blt_sizebone.visible= 0;
                    }
                    if(instance_exists(obj_blueattackgen )) {
                        // obj_blueattackgen
                        with(685) instance_destroy();
                    }
                    obj_heart.vspeed= 0;
                    alarm[2]= 2;
                }
            }
        } else  {
            snd_play(snd_hurt1 );
            global.hshake= 2;
            global.shakespeed= 2;
            global.vshake= 2;
            instance_create(0, 0, obj_shaker );
            instance_destroy();
        }
    }
}



