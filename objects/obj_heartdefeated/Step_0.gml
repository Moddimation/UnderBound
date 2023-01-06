if(dingus == 2) {
    currentvol-= 0.02;
    caster_set_volume(gameoversong, currentvol);
}
if(keyboard_multicheck_pressed(0)) event_user(0);
if(heartcon == 5) {
    hearttimer++;
    if(global.flag[502] < 2) {
        if(hearttimer > 80 && hearttimer < 120) {
            x= thisx + random(3) - random(3);
            y= thisy + random(3) - random(3);
        }
        if(hearttimer == 120) {
            x= thisx + 2;
            y= thisy;
            snd_play(snd_break1 );
            sprite_index= spr_heart ;
        }
        if(hearttimer == 150) {
            global.typer= 61;
            global.msc= 0;
            global.msg[0]= "* But it refused^5.%%";
            instance_create(160, 100, OBJ_WRITER );
        }
        if(hearttimer == 220) instance_create(0, 0, obj_screenwhiter );
        if(hearttimer == 254) {
            global.border= 0;
            global.hp= global.maxhp;
            caster_free(-3);
            // obj_gameover
            with(153) instance_destroy();
            room_goto(306);
        }
    } else  {
        if(hearttimer > 20 && hearttimer < 40) {
            x= thisx + random(3) - random(3);
            y= thisy + random(3) - random(3);
        }
        if(hearttimer == 40) {
            x= thisx + 2;
            y= thisy;
            snd_play(snd_break1 );
            sprite_index= spr_heart ;
        }
        if(hearttimer == 60) instance_create(0, 0, obj_screenwhiter );
        if(hearttimer == 94) {
            global.border= 0;
            global.hp= global.maxhp;
            caster_free(-3);
            // obj_gameover
            with(153) instance_destroy();
            room_goto(306);
        }
    }
}


/*  */
