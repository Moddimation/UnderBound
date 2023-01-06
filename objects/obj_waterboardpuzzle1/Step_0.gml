if(won == 0) {
    i= 0;
    while(i < instance_number(1114)) {
        h= 0;
        v= 0;
        me= instance_find(1114, i);
        xx= me.x;
        yy= me.y;
        j= 1;
        rx[0]= 1;
        lx[0]= 1;
        ux[0]= 1;
        dx[0]= 1;
        doodly= 0;
        repeat(3)  {
            lx[j]= 0;
            dx[j]= 0;
            rx[j]= 0;
            ux[j]= 0;
            l[j]= instance_position(xx - 2 - doodly, yy, 1114);
            r[j]= instance_position(xx + 22 + doodly, yy, 1114);
            u[j]= instance_position(xx, yy - 2 - doodly, 1114);
            d[j]= instance_position(xx, yy + 22 + doodly, 1114);
            if(l[j] != -4 && lx[j - 1] == 1 && l[j].using == 3) {
                h++;
                lx[j]= 1;
            }
            if(r[j] != -4 && rx[j - 1] == 1 && r[j].using == 3) {
                h++;
                rx[j]= 1;
            }
            if(u[j] != -4 && ux[j - 1] == 1 && u[j].using == 3) {
                v++;
                ux[j]= 1;
            }
            if(d[j] != -4 && dx[j - 1] == 1 && d[j].using == 3) {
                v++;
                dx[j]= 1;
            }
            j++;
            doodly+= 20;
        }
        if(v >= 3 && me.using == 3) {
            won= 90;
            n= 1;
            me.using= 5;
            repeat(3)  {
                if(u[n] != -4 && ux[n - 1] == 1)
                    u[n].using= 5;
                if(d[n] != -4 && dx[n - 1] == 1)
                    d[n].using= 5;
                n++;
            }
        }
        if(h >= 3 && me.using == 3) {
            won= 90;
            n= 1;
            me.using= 5;
            repeat(3)  {
                if(r[n] != -4 && rx[n - 1] == 1)
                    r[n].using= 5;
                if(l[n] != -4 && lx[n - 1] == 1)
                    l[n].using= 5;
                n++;
            }
        }
        i++;
    }
}
if(won == 9999) {
    if(won == 2 && global.interact == 0) {
        global.interact= 1;
        won= 97;
        vol1= caster_get_volume(global.currentsong);
        vol2= vol1;
        caster_pause(global.currentsong);
    }
    if(won == 97) {
        vol2-= 0.02;
        caster_set_volume(global.currentsong, vol2);
        if(vol2 < 0.04) {
            vol2= 0;
            caster_pause(global.currentsong);
            won= 98;
        }
    }
    if(won == 98) {
        snd_play(snd_dumbvictory );
        global.msg[0]= "* (You hear a small voice.)/";
        global.msg[1]= "* Congratulations!/";
        global.msg[2]= "* What\\'s wrong with you!/%%";
        scr_regulartext();
        won= 99;
    }
    if(won == 99 && !instance_exists(OBJ_WRITER )) {
        global.interact= 0;
        caster_set_volume(global.currentsong, vol1);
        caster_resume(global.currentsong);
        won= 100;
    }
}

/* */
/*  */
