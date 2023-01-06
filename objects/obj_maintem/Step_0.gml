adjust= 0;
if(control == 1) {
    if(keyboard_check(39)) hspeed+= 0.2;
    if(keyboard_check(37)) hspeed-= 0.2;
    if(keyboard_check(40) && height > 4) {
        height--;
        y++;
    }
    if(keyboard_check(38)) {
        height++;
        y--;
    }
    if(keyboard_check(13)) {
        length++;
        leg3.x++;
        leg4.x++;
    }
    if(keyboard_check(16)) {
        length--;
        leg3.x--;
        leg4.x--;
    }
} else  {
    if(obj_heart.x + obj_heart.sprite_width / 2 <= (leg1.x + leg4.x) / 2) {
        adjust= 1;
        hspeed-= adjustspeed;
        leg1.hspeed-= adjustspeed;
        leg2.hspeed-= adjustspeed;
        leg3.hspeed-= adjustspeed;
        leg4.hspeed-= adjustspeed;
    }
    if(obj_heart.x + obj_heart.sprite_width / 2 >= (leg1.x + leg4.x) / 2) {
        adjust= 1;
        hspeed+= adjustspeed;
        leg1.hspeed+= adjustspeed;
        leg2.hspeed+= adjustspeed;
        leg3.hspeed+= adjustspeed;
        leg4.hspeed+= adjustspeed;
    }
    siner++;
    hadd= sin(siner / 10) * 0.1;
    if(abs(hspeed) < 0.4) {
        siner++;
        hadd*= 1.5;
    }
    hspeed+= hadd;
    leg1.hspeed+= hadd;
    leg2.hspeed+= hadd;
    leg3.hspeed+= hadd;
    leg4.hspeed+= hadd;
}
if(global.turntimer < 1) {
    instance_destroy();
    global.mnfight= 3;
}
if(collision_rectangle(x + 13, y + 36, x + 50 + length, y + 63, 743, 0, 1))
    event_user(2);


/*  */
