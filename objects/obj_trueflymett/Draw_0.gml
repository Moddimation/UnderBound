if(mode == 0) {
    siner++;
    y+= cos(siner / 3);
    draw_sprite(spr_mett_plain , 0, x, y);
    draw_sprite(spr_chefhat , 0, x + 11, y - 12);
    if(con == 0) {
        x= __view_get( e__VW.XView, 0 ) + 350;
        hspeed= -6;
        con= 1;
    }
    if(con == 1 && x < __view_get( e__VW.XView, 0 ) + 280) {
        hspeed= 0;
        con= 2;
        alarm[4]= 40;
    }
    if(con == 3) {
        con= 4;
        hspeed= 10;
    }
    if(con == 4 && x > __view_get( e__VW.XView, 0 ) + 360) {
        hspeed= 0;
        con= 5;
        setmode= 1;
    }
}
if(mode == 1) {
    modetime+= 1 + insanity / 2.7;
    if(modetime > 20 && modetime < 170) {
        if(x > __view_get( e__VW.XView, 0 ) + 300) hspeed= -5 - insanity * 2;
        if(x < __view_get( e__VW.XView, 0 )) hspeed= 5 + insanity * 2;
    }
    if(modetime >= 170) {
        if(x <= __view_get( e__VW.XView, 0 ) + 150) hspeed= -6;
        if(x >= __view_get( e__VW.XView, 0 ) + 150) hspeed= 6;
        if(x > __view_get( e__VW.XView, 0 ) + 350) setmode= 2;
        if(x < __view_get( e__VW.XView, 0 ) - 40) setmode= 2;
    }
    y+= cos(siner / 3);
    sx= sin(siner / 1.5) * 2;
    sy= cos(siner / 1.2) * 3;
    siner++;
    draw_sprite(spr_mett_eggcartonarm , 0, x - 30 + sx, y + sy + 5);
    draw_sprite(spr_chefhat , 0, x + 11, y - 12);
    draw_sprite(spr_mett_eggcarton , 0, x, y);
    eggtimer++;
    if(eggtimer >= 4 - insanity && obj_jetpackchara.eligible == 1) {
        egg= instance_create(x - 30 + sx + 5 + random(13), y + sy + 5 + 22, obj_mett_eggbullet );
        eggtimer= 0;
    }
}
if(mode == 2) {
    modetime+= 1 + insanity / 2.7;
    if(modetime > 20 && modetime < 170) {
        if(x > __view_get( e__VW.XView, 0 ) + 300) hspeed= -3;
        if(x < __view_get( e__VW.XView, 0 )) hspeed= 3;
    }
    if(modetime >= 170) {
        if(x <= __view_get( e__VW.XView, 0 ) + 150) hspeed= -8;
        if(x >= __view_get( e__VW.XView, 0 ) + 150) hspeed= 8;
        if(x > __view_get( e__VW.XView, 0 ) + 350) setmode= 3;
        if(x < __view_get( e__VW.XView, 0 ) - 40) setmode= 3;
    }
    y+= cos(siner / 3);
    siner++;
    sugartimer++;
    draw_sprite(spr_mett_plain , 0, x, y);
    draw_sprite(spr_mett_sugararm , sugartimer / 4, x - 11, y);
    draw_sprite(spr_chefhat , 0, x + 11, y - 12);
    if(sugartimer >= 20 - insanity * 3 && obj_jetpackchara.eligible == 1) {
        event_user(0);
        sugartimer= 0;
    }
}
if(mode == 3) {
    modetime+= 1 + insanity / 2.7;
    if(modetime > 20 && modetime < 170) {
        if(x > __view_get( e__VW.XView, 0 ) + 300) hspeed= -6 - insanity;
        if(x < __view_get( e__VW.XView, 0 )) hspeed= 6 + insanity;
    }
    if(modetime >= 170) {
        if(x <= __view_get( e__VW.XView, 0 ) + 150) hspeed= -8;
        if(x >= __view_get( e__VW.XView, 0 ) + 150) hspeed= 8;
        if(x > __view_get( e__VW.XView, 0 ) + 350) setmode= 1;
        if(x < __view_get( e__VW.XView, 0 ) - 40) setmode= 1;
    }
    siner++;
    draw_sprite_ext(spr_milk_of_hell , 0, x, y + 31, 1, 1, 100 - sin(siner / 2) * 10, 16777215, 1);
    draw_sprite(spr_mett_milkpour , 0, x, y);
    draw_sprite(spr_chefhat , 0, x + 2, y - 13);
    milktimer++;
    if(milktimer >= 10 - insanity * 2 && obj_jetpackchara.eligible == 1) {
        instance_create(x - 16, y + 37, obj_milkofhell_shot );
        milktimer= 0;
    }
}
if(mode == 4) {
    speed= 0;
    siner++;
    draw_sprite(spr_mett_plain , 0, x, y + cos(siner / 3));
    draw_sprite(spr_chefhat , 0, x + 11, y - 12 + cos(siner / 3));
}
if(setmode == 1) {
    x= __view_get( e__VW.XView, 0 ) + 350;
    y= __view_get( e__VW.YView, 0 ) + 20;
    siner= 0;
    mode= 1;
    modetime= 0;
    modecon= 0;
    hspeed= -5;
    setmode= 0;
    if(insanity <= 3) insanity++;
    eggtimer= 0;
}
if(setmode == 2) {
    x= __view_get( e__VW.XView, 0 ) + 350;
    y= __view_get( e__VW.YView, 0 ) + 20;
    siner= 0;
    mode= 2;
    modetime= 0;
    modecon= 0;
    hspeed= -5;
    setmode= 0;
    sugartimer= 0;
}
if(setmode == 3) {
    x= __view_get( e__VW.XView, 0 ) + 420;
    y= __view_get( e__VW.YView, 0 ) + 20;
    siner= 0;
    mode= 3;
    modetime= 0;
    modecon= 0;
    hspeed= -5;
    setmode= 0;
    milktimer= 0;
}

/* */
/*  */
