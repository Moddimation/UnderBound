if(global.mnfight != 2) movement= 0;
else  {
    if(movement == 0) movement= 1;
}
global.invc--;
if(global.invc > 0 || obj_battlecontroller.runaway == 1)
    image_speed= 0.5;
else  {
    image_index= 0;
    image_speed= 0;
}
charge--;
if(shot == 1 && keyboard_multicheck_pressed(0) && global.mnfight == 2 && (instance_number(739) == 0 || charge < 0)) {
    charge= 14;
    instance_create(x + 4, y + 2, obj_heartshot );
    snd_play(snd_heartshot );
}
if(sprite_index == 35) image_angle+= 6;
if(confuse == 1 && global.mnfight == 2) {
    if(x < obj_lborder.x + 8) x= obj_lborder.x + 8;
    if(y < obj_uborder.x + 8) y= obj_uborder.x + 8;
    if(x > obj_rborder.x - 8) x= obj_rborder.x - 8;
    if(y > obj_dborder.y - 8) y= obj_dborder.y - 8;
}
if(movement == 11) {
    vspeed= 0;
    if(keyboard_check(38)) y-= global.sp;
    if(keyboard_check(40)) y+= global.sp;
    if(keyboard_check(37) && jumpstage == 1 && hspeed == 0) {
        jumpstage= 2;
        hspeed= -6;
    }
}
if(movement == 12) {
    hspeed= 0;
    if(keyboard_check(37)) x-= global.sp;
    if(keyboard_check(39)) x+= global.sp;
    if(keyboard_check(40) && jumpstage == 1 && vspeed == 0) {
        jumpstage= 2;
        vspeed= 6;
    }
}
if(movement == 13) {
    vspeed= 0;
    if(keyboard_check(38)) y-= global.sp;
    if(keyboard_check(40)) y+= global.sp;
    if(keyboard_check(39) && jumpstage == 1 && hspeed == 0) {
        jumpstage= 2;
        hspeed= 6;
    }
}
if(jumpstage == 2 && movement == 2) {
    if(global.osflavor == 1 && keyboard_check_direct(38) == 0 && vspeed <= -1)
        vspeed= -1;
    if(global.osflavor == 2 && keyboard_check(38) == 0 && vspeed <= -1)
        vspeed= -1;
    if(vspeed > 0.5 && vspeed < 8) vspeed+= 0.6;
    if(vspeed > -1 && vspeed <= 0.5)
        vspeed+= 0.2;
    if(vspeed > -4 && vspeed <= -1) vspeed+= 0.5;
    if(vspeed <= -4) vspeed+= 0.2;
}
if(jumpstage == 2 && movement == 11) {
    if(global.osflavor == 1 && keyboard_check_direct(37) == 0 && hspeed <= -1)
        hspeed= -1;
    if(global.osflavor == 2 && keyboard_check(37) == 0 && hspeed <= -1)
        hspeed= -1;
    if(hspeed > 0.5 && hspeed < 8) hspeed+= 0.6;
    if(hspeed > -1 && hspeed <= 0.5)
        hspeed+= 0.2;
    if(hspeed > -4 && hspeed <= -1) hspeed+= 0.5;
    if(hspeed <= -4) hspeed+= 0.2;
}
if(jumpstage == 2 && movement == 12) {
    if(global.osflavor == 1 && keyboard_check_direct(40) == 0 && vspeed >= 1)
        vspeed= 1;
    if(global.osflavor == 2 && keyboard_check(40) == 0 && vspeed >= 1)
        vspeed= 1;
    if(vspeed < -0.5 && vspeed > -8)
        vspeed-= 0.6;
    if(vspeed < 1 && vspeed >= -0.5)
        vspeed-= 0.2;
    if(vspeed < 4 && vspeed >= 1) vspeed-= 0.5;
    if(vspeed >= 4) vspeed-= 0.2;
}
if(jumpstage == 2 && movement == 13) {
    if(global.osflavor == 1 && keyboard_check_direct(39) == 0 && hspeed >= 1)
        hspeed= 1;
    if(global.osflavor == 2 && keyboard_check(39) == 0 && hspeed >= 1)
        hspeed= 1;
    if(hspeed < -0.5 && hspeed > -8)
        hspeed-= 0.6;
    if(hspeed < 1 && hspeed >= -0.5)
        hspeed-= 0.2;
    if(hspeed < 4 && hspeed >= 1) hspeed-= 0.5;
    if(hspeed >= 4) hspeed-= 0.2;
}
if(ignore_border == 0 && instance_exists(obj_sansb_body ) && global.mnfight == 2) {
    if(x < global.idealborder[0] + 4) {
        x= global.idealborder[0] + 4;
        event_user(7);
        if(hspeed < 0) hspeed= 0;
        if(movement == 13) jumpstage= 1;
    }
    if(y < global.idealborder[2] + 4) {
        y= global.idealborder[2] + 4;
        event_user(7);
        if(vspeed < 0) vspeed= 0;
        if(movement == 12) jumpstage= 1;
    }
    if(x > global.idealborder[1] - 16) {
        x= global.idealborder[1] - 16;
        event_user(7);
        if(hspeed > 0) hspeed= 0;
        if(movement == 11) jumpstage= 1;
    }
    if(y > global.idealborder[3] - 16) {
        y= global.idealborder[3] - 16;
        event_user(7);
        if(vspeed > 0) vspeed= 0;
        if(movement == 2) jumpstage= 1;
    }
}
if(instance_exists(obj_battlecontroller ) && obj_battlecontroller.runaway == 1 && x < -20) {
    if(!instance_exists(obj_unfader )) instance_create(0, 0, obj_unfader );
    if(x < -60) {
        if(global.flag[15] == 0) {
            caster_stop(global.batmusic);
            caster_free(global.batmusic);
        }
        room_goto(global.currentroom);
    }
}


/*  */
