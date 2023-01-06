if(instance_exists(obj_waterboardpuzzle1 )) {
    if(myinteract == 1 && using == 0 && obj_waterboardpuzzle1.waterboard == 0) {
        if(snd_isplaying(snd_movemenu ) == 0) snd_play(snd_movemenu );
        using= 1;
        obj_waterboardpuzzle1.waterboard= 1;
        myinteract= 0;
        solid= 0;
    } else  {
        if(myinteract == 1 && using == 0) myinteract= 0;
    }
}
if(myinteract == 1 && using == 1) {
    x-= 40;
    // obj_mainchara
    with(1570) {
        if(global.facing == 2 && collision_rectangle(x + 4, y + sprite_height - 5, x + sprite_width - 4, y + 5, 1368, 0, 1)) {
            interactedobject= collision_rectangle(x + 4, y + sprite_height - 5, x + sprite_width - 4, y + 8, 1368, 0, 1);
            if(interactedobject != -4) {
                with(interactedobject) facing= 0;
                with(interactedobject) script_execute(scr_interact );
            }
        }
    }
    myinteract= 0;
    x+= 40;
}
if(using == 1) {
    global.encounter= 0;
    x= obj_mainchara.x;
    y= obj_mainchara.y - 10;
    depth= obj_mainchara.depth - 2;
    if(global.interact == 0 && keyboard_multicheck_pressed(0) == 1) {
        if(global.facing == 0) {
            j= instance_position(obj_mainchara.x + 10, obj_mainchara.y + 40, 1363);
            h= instance_position(obj_mainchara.x + 10, obj_mainchara.y + 40, 1114);
            g= instance_position(obj_mainchara.x + 10, obj_mainchara.y + 40, 1112);
            if(h == -4 && j == -4 && g != -4) {
                y= obj_mainchara.y + 30;
                move_snap(20, 20);
                using= 2;
                dir= 0;
            }
        }
        if(global.facing == 2) {
            g= instance_position(obj_mainchara.x + 10, obj_mainchara.y, 1112);
            if(g != -4 && !collision_point(obj_mainchara.x + 10, obj_mainchara.y, 1114, 0, 1)) {
                y= obj_mainchara.y;
                move_snap(20, 20);
                using= 2;
                dir= 2;
            }
        }
        if(global.facing == 1) {
            j= instance_position(obj_mainchara.x + 30, obj_mainchara.y + 20, 1363);
            h= instance_position(obj_mainchara.x + 30, obj_mainchara.y + 20, 1114);
            g= instance_position(obj_mainchara.x + 30, obj_mainchara.y + 20, 1112);
            if(j == -4 && h == -4 && g != -4) {
                y= obj_mainchara.y + 10;
                x= obj_mainchara.x + 20;
                move_snap(20, 20);
                using= 2;
                dir= 1;
            }
        }
        if(global.facing == 3) {
            j= instance_position(obj_mainchara.x - 10, obj_mainchara.y + 20, 1363);
            h= instance_position(obj_mainchara.x - 10, obj_mainchara.y + 20, 1114);
            g= instance_position(obj_mainchara.x - 10, obj_mainchara.y + 20, 1112);
            if(j == -4 && h == -4 && g != -4) {
                y= obj_mainchara.y + 10;
                x= obj_mainchara.x - 20;
                move_snap(20, 20);
                using= 2;
                dir= 3;
            }
        }
        if(using == 2) obj_waterboardpuzzle1.waterboard= 0;
    }
}
if(using == 2) {
    depth= 900000;
    if(dir == 2) {
        y-= 2;
        if(instance_position(x + 10, y - 2, 1363) != -4) using= 3;
        if(instance_position(x + 10, y - 2, 1113) != -4) using= 3;
        if(instance_position(x + 10, y - 2, 1114) != -4) using= 3;
    }
    if(dir == 1) {
        x+= 2;
        if(instance_position(x + 20, y + 10, 1363) != -4) using= 3;
        if(instance_position(x + 20, y + 10, 1113) != -4) using= 3;
        if(instance_position(x + 20, y + 10, 1114) != -4) using= 3;
    }
    if(dir == 0) {
        y+= 2;
        if(instance_position(x + 10, y + 22, 1363) != -4) using= 3;
        if(instance_position(x + 10, y + 22, 1113) != -4) using= 3;
        if(instance_position(x + 10, y + 22, 1114) != -4) using= 3;
    }
    if(dir == 3) {
        x-= 2;
        if(instance_position(x - 2, y + 10, 1363) != -4) using= 3;
        if(instance_position(x - 2, y + 10, 1113) != -4) using= 3;
        if(instance_position(x - 2, y + 10, 1114) != -4) using= 3;
    }
    if(using == 3) move_snap(20, 20);
}
if(using == 5) {
    image_speed= 0.17;
    alarm[2]= 30;
    using= 6;
}

/* */
/*  */
