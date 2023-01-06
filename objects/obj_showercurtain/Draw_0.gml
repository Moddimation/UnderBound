anim+= animspeed;
if(mode == 0) {
    draw_sprite(spr_showercurtain_man , floor(anim), x, y);
    if(obj_mainchara.y < remy - 2) {
        if(onoff == 1) obj_mainchara.y= remy - 1;
        else  obj_mainchara.y= remy;
    }
    remy= obj_mainchara.y;
    if(onoff == 0) onoff= 1;
    else  onoff= 0;
    if(obj_mainchara.y < 180) {
        animspeed= 0.08 + 0.8 * (180 - obj_mainchara.y) / 180;
        pit= 0.6 + 1 * (180 - obj_mainchara.y) / 180;
        caster_set_pitch(dist, pit);
    }
}
if(drawkey == 1)
    draw_sprite_ext(spr_leverkey , anim, x + 34, y + 30, 1, 1, 0, 65280, 1);
if(myinteract == 1 && mode == 0) {
    animspeed= 0.1;
    mode= 1;
    myinteract= 0;
    global.interact= 1;
    con= 1;
    alarm[4]= 10;
    caster_free(dist);
    snd_play(snd_splash );
    global.flag[483]= 1;
    drawkey= 1;
}
if(con == 2) {
    myinteract= 0;
    global.interact= 0;
    con= 3;
}
if(myinteract == 1 && global.flag[483] == 1) {
    con= 4;
    myinteract= 0;
    global.interact= 1;
    global.msc= 0;
    global.typer= 5;
    drawkey= 0;
    global.msg[0]= "* (There\\'s a green key lying&  in the bathtub.)/";
    global.msg[1]= "* (You took it and put it&  on your keychain.)/%%";
    instance_create(0, 0, obj_dialoguer );
    global.flag[483]= 2;
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    con= 10;
    global.interact= 0;
}
if(myinteract == 1 && global.flag[483] >= 2) {
    con= 12;
    myinteract= 0;
    global.interact= 1;
    global.msc= 0;
    global.typer= 5;
    global.msg[0]= "* (It\\'s an empty bathtub.)/%%";
    instance_create(0, 0, obj_dialoguer );
}
if(con == 12 && !instance_exists(OBJ_WRITER )) {
    con= 10;
    global.interact= 0;
}
if(mode == 1) {
    if(size > 0.3) size-= 0.1;
    draw_sprite_ext(spr_showercurtain_empty , 0, x, y, size, 1, 0, 16777215, 1);
}
if(mode == 2) {
    size= 0.3;
    draw_sprite_ext(spr_showercurtain_empty , 0, x, y, size, 1, 0, 16777215, 1);
}
draw_sprite(spr_showerbar , 0, x, y);

/* */
/*  */
