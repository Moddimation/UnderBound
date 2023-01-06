global.flag[17]= 1;
if(STOPPER == 0) {
    if(d == 0) scr_depth();
    if(fun == 0) {
        myinteract= 0;
        if(speed == 0) {
            image_index= 0;
            image_speed= 0;
        }
        if(speed > 0) {
            image_speed= 0.2;
            if(image_index == 1 || image_index == 3) snd_play(snd_undynestep );
        }
    }
    if(fun == 3 && (image_index == 1 || image_index == 3))
        snd_play(snd_undynestep );
    if(con == 0) {
        alarm[4]= 32;
        con= 1;
        if(newvar == 1) {
            alarm[4]= 20;
            blc= instance_create(999, 999, obj_cosmeticblcon );
            newvar= 0;
            con= 3;
        }
    }
    if(con == 2) {
        blc= instance_create(x, y, obj_cosmeticblcon );
        snd_play(snd_b );
        con= 3;
        alarm[4]= 25;
    }
    if(con == 4 && room != 137) {
        with(blc) instance_destroy();
        spd= 5;
        if(global.flag[99] > 3) spd= 4;
        move_towards_point(obj_mainchara.x - 4, obj_mainchara.y - 20, spd);
        if(abs(vspeed) > abs(hspeed)) {
            if(vspeed < 0) sprite_index= usprite;
            else  sprite_index= dsprite;
        } else  {
            if(hspeed < 0) sprite_index= lsprite;
            else  sprite_index= rsprite;
        }
    }
    if(con == 4 && room == 137) {
        with(blc) instance_destroy();
        if(obj_mainchara.x > x + 20) {
            hspeed= 3;
            image_speed= 0.2;
            sprite_index= rsprite;
        }
        if(obj_mainchara.x <= x + 20) {
            hspeed= -3;
            image_speed= 0.2;
            sprite_index= lsprite;
        }
        if(x > 140 && x < 160 && sans == 0) {
            con= 8;
            sans= 1;
        }
    }
    if(active == 1 && global.interact == 0 && collision_rectangle(x + 6, y + sprite_height - 20, x + sprite_width - 6, y + sprite_height - 2, 1570, 0, 1)) {
        speed= 0;
        con= 5;
    }
    if(active == 1 && global.interact == 0 && room == 137 && collision_rectangle(x + 6, y + sprite_height + 60, x + sprite_width - 6, y + sprite_height - 80, 1570, 0, 1)) {
        speed= 0;
        con= 5;
    }
    if(con == 5) {
        alarm[4]= -1;
        active= 0;
        speed= 0;
        global.interact= 1;
        con= 6;
        global.border= 12;
        global.battlegroup= 47;
        global.mercy= 1;
        instance_create(0, 0, obj_battler );
        talkedto= 0;
    }
    if(con == 6 && global.interact == 0) {
        active= 1;
        con= 0;
        if(room == 134) {
            if(obj_mainchara.y > 600) y= 500;
            else  y= 640;
            x= 160;
        }
        if(room == 135) {
            if(global.entrance == 1) y= obj_mainchara.y + 130;
            if(global.entrance == 2) y= obj_mainchara.y - 100;
        }
        if(room == 136) {
            if(global.entrance == 1) x= obj_mainchara.x - 100;
            if(global.entrance == 2) x= obj_mainchara.x + 100;
        }
        if(room == 137) {
            if(global.entrance == 1) x= obj_mainchara.x - 60;
            if(global.entrance == 2) x= obj_mainchara.x + 60;
        }
        if(global.flag[350] == 1) {
            global.mercy= 0;
            caster_free(-3);
            global.plot= 122;
            instance_destroy();
        }
    }
    if(con == 8) {
        hspeed= 0;
        con= 9;
        alarm[4]= 15;
    }
    if(con == 10) {
        sprite_index= usprite;
        con= 11;
        alarm[4]= 30;
    }
    if(con == 12) {
        sprite_index= spr_undyne_helmet_d_pissed ;
        image_speed= 0.2;
        con= 13;
        alarm[4]= 30;
    }
    if(con == 14) {
        sans= 1;
        con= 4;
        active= 1;
    }
    if(con == 20 && distance_to_object(1570) < 60) {
        speed= 0;
        image_index= 0;
        image_speed= 0;
        active= 0;
        con= 21;
    }
    if(!instance_exists(OBJ_WRITER ) && con == 21) {
        active= 1;
        con= 4;
    }
    if(active == 4) {
        rememberx[i]= x;
        remembery[i]= y;
        i= 60;
        while(i > 0) {
            rememberx[i]= rememberx[i - 1];
            remembery[i]= remembery[i - 1];
            i--;
        }
    }
    if(global.flag[350] == 1 && STOPPER == 0) {
        global.mercy= 0;
        caster_free(-3);
        audio_stop_all();
        global.plot= 122;
        global.interact= 0;
        STOPPER= 1;
        visible= 0;
        con= 40;
        alarm[4]= 2;
    }
}
if(con == 41) {
    global.flag[17]= 0;
    audio_stop_all();
    instance_destroy();
}

/* */
/*  */
