siner++;
if(z_b != 0) hspeed= cos(z_a * siner) * z_b;
draw_set_color(16777215);
draw_rectangle(x - len, y, x + len, y + 6, 1);
draw_set_color(32768);
draw_rectangle(x - len, y + 2, x + len, y - 4, 1);
if(collision_rectangle(x - len + 2, y + 2, x + len - 2, y - 4, 743, 0, 1)) {
    if(obj_heart.vspeed >= 0 && obj_heart.y <= y - 11) {
        lock= 1;
        obj_heart.y= y - 16;
        obj_heart.vspeed= 0;
        obj_heart.jumpstage= 1;
    }
} else  {
    if(lock == 1 && obj_heart.jumpstage == 1) {
        obj_heart.jumpstage= 2;
        obj_heart.vspeed= 0;
    }
    lock= 0;
}
if(lock == 1) {
    obj_heart.x+= hspeed;
    obj_heart.y+= vspeed;
    if(obj_heart.x < global.idealborder[0] + 5)
        obj_heart.x= global.idealborder[0] + 5;
    if(obj_heart.x > global.idealborder[1] - 16)
        obj_heart.x= global.idealborder[1] - 16;
}
if(x < 0 - len && hspeed < 0) instance_destroy();
if(x > 640 + len && hspeed > 0) instance_destroy();
if(vspeed > 0 && y > global.idealborder[3]) instance_destroy();
if(jud == 1) {
    jtimer++;
    if(jtimer >= 5 && jtimer <= 20)
        hspeed+= 0.25;
    if(jtimer == 21) hspeed= 3;
    if(x > global.idealborder[1] - len && hspeed > 0)
        hspeed*= -1;
    if(x < global.idealborder[0] + len && hspeed < 0)
        hspeed*= -1;
}

