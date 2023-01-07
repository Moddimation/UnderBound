draw_self_border();
if(x < global.idealborder[0] - 100 && hspeed < 0)
    instance_destroy();
if(x > global.idealborder[1] + 100 && hspeed > 0)
    instance_destroy();
if(instance_exists(blt_superbone ) && x < global.idealborder[1] && obj_time.up == 1 && movinged == 0 && obj_heart.x < blt_superbone.x + 20 && obj_heart.y > 50) {
    global.border= 51;
    if(obj_heart.y < 270)
        global.idealborder[2]= round((obj_heart.y - 20) / 5) * 5;
    // blt_coolbus
    with(637) movinged= 1;
    if(obj_heart.vspeed >= -2 && obj_heart.yprevious > obj_heart.y)
        obj_heart.vspeed= -2;
}
movinged= 0;
if(global.invc < 2 && abs(obj_heart.x + 25 - x) < 50 && collision_rectangle(x + 5, y + 10, x + 55, global.idealborder[3] - 10, 743, 0, 1))
    event_user(1);



