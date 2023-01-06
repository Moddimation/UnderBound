if(con == 0) {
    if(frozen == 0) {
        siner++;
        if(desperate == 1) siner+= 0.1;
    } else  {
        if(frozen != 4) x= xstart + random(6) - random(6);
    }
}
if(global.debug == 1 && keyboard_check_pressed(69)) con= 1;
if(con == 1) {
    con= 3;
    alarm[4]= 2;
}
if(con == 3) {
    siner2+= 1.2;
    md= 1;
    gr= make_color_rgb(170 + sin(siner2 / 2) * 70, 170 + sin((siner2 + 3) / 2) * 70, 170 + sin((siner2 + 6) / 2) * 70);
    grgr= make_color_rgb(170 + sin((siner2 + 1) / 2) * 70, 170 + sin((siner2 + 4) / 2) * 70, 170 + sin((siner2 + 7) / 2) * 70);
    grgrgr= make_color_rgb(170 + sin((siner2 + 2) / 2) * 70, 170 + sin((siner2 + 4) / 2) * 70, 170 + sin((siner2 + 8) / 2) * 70);
}
if(con == 4) {
    con= 5;
    durara= 0;
    oner= choose(0, 1);
    alarm[4]= 3;
    if(wimpy == 1) alarm[4]= 3;
    image_blend= 16777215;
}
if(con == 5) {
    opx= 0;
    eba= instance_create(x, y, obj_eyeshot_a );
    eba.memorymode= memorymode;
    eba.durara= durara;
    eba.oner= oner;
    if(wimpy == 0) {
        with(eba) {
            move_towards_point(obj_vsflowey_heart.x + 8, obj_vsflowey_heart.y + 8, 12);
            friction= -0.2;
            direction+= 18 - durara * 18;
        }
    }
    if(wimpy == 1) {
        with(eba) {
            move_towards_point(obj_vsflowey_heart.x + 8, obj_vsflowey_heart.y + 8, 5);
            friction= -0.1;
            direction+= 30 - durara * 30;
        }
    }
    opx= op;
    ebb= instance_create(x + opx, y, obj_eyeshot_a );
    ebb.memorymode= memorymode;
    ebb.durara= durara;
    ebb.oner= oner;
    if(wimpy == 0) {
        with(ebb) {
            move_towards_point(obj_vsflowey_heart.x + 8, obj_vsflowey_heart.y + 8, 12);
            friction= -0.2;
            direction+= 18 - durara * 18;
        }
    }
    if(wimpy == 1) {
        with(ebb) {
            move_towards_point(obj_vsflowey_heart.x + 8, obj_vsflowey_heart.y + 8, 5);
            friction= -0.1;
            direction+= 30 - durara * 30;
        }
    }
    durara++;
    md= 1;
    if(gr == 16777215) {
        gr= 255;
        grgr= 0;
        grgrgr= 0;
    } else  {
        gr= 16777215;
        grgr= 16777215;
        grgrgr= 16777215;
    }
}
if(con == 6) {
    gr= 16777215;
    grgr= 16777215;
    grgrgr= 16777215;
    md= 0;
    image_blend= 16777215;
    con= 0;
}
if(con == 10) {
    siner2+= 1.2;
    md= 1;
    gr= make_color_rgb(170 + sin(siner2 / 2) * 70, 170 + sin((siner2 + 3) / 2) * 70, 170 + sin((siner2 + 6) / 2) * 70);
    grgr= make_color_rgb(170 + sin((siner2 + 1) / 2) * 70, 170 + sin((siner2 + 4) / 2) * 70, 170 + sin((siner2 + 7) / 2) * 70);
    grgrgr= make_color_rgb(170 + sin((siner2 + 2) / 2) * 70, 170 + sin((siner2 + 4) / 2) * 70, 170 + sin((siner2 + 8) / 2) * 70);
}
rot= sin(siner / 3) * 4;
rotx= sin(siner / 4) * 3;
roty= cos(siner / 4) * 3;
if(md == 0) {
    draw_sprite_ext(spr_lefteye_nopupil , image_index, x + rotx * 2 - 2, y + roty, 1, 1, rot, image_blend, 1);
    if(desperate == 0)
        draw_sprite_ext(spr_lefteye_pupil , image_index, x + rotx * 2.5 - 2, y + roty, 1 - sin(siner / 2) * 0.2, 1 - sin(siner / 2) * 0.2, rot, image_blend, 1);
    if(desperate == 1) {
        if(frozen == 0 || frozen == 4)
            draw_sprite_ext(spr_lefteye_pupil , image_index, x + rotx * 2.5 - 2, y + roty, 1 - sin(siner / 2) * 0.2, 1 - sin(siner / 2) * 0.2, rot, image_blend, 1);
        else 
            draw_sprite_ext(spr_lefteye_pupil , image_index, x + rotx * 2.5 - random(3), y + roty + random(2), 0.5 - sin(siner / 2) * 0.1, 0.5 - sin(siner / 2) * 0.1, rot, image_blend, 1);
    }
    if(desperate == 2)
        draw_sprite_ext(spr_lefteye_pupil , image_index, x + rotx * 3 - 2, y + roty, 0.6 - sin(siner / 2) * 0.3, 0.6 - sin(siner / 2) * 0.3, rot, image_blend, 1);
}
if(md == 1) {
    draw_sprite_ext(spr_lefteye_nopupil_flash , image_index, x + rotx * 2 - 2, y + roty, 1, 1, rot, grgr, 1);
    draw_sprite_ext(spr_lefteye_pupil_flash , image_index, x + rotx * 2.5 - 2, y + roty, 1 - sin(siner / 2) * 0.2, 1 - sin(siner / 2) * 0.2, rot, gr, 1);
}
draw_sprite_ext(spr_lefteye_overlay , image_index, x + rotx, y + roty, 1, 1, rot, image_blend, 1);
op= 250;
if(md == 0) {
    draw_sprite_ext(spr_lefteye_nopupil , image_index, x + op - rotx * 2 + 2, y + roty, -1, 1, -rot, image_blend, 1);
    if(desperate == 0)
        draw_sprite_ext(spr_lefteye_pupil , image_index, x + op - rotx * 2.5 + 2, y + roty, -1 + cos(siner / 2) * 0.2, 1 - cos(siner / 2) * 0.2, -rot, image_blend, 1);
    if(desperate == 1) {
        if(frozen == 0 || frozen == 4)
            draw_sprite_ext(spr_lefteye_pupil , image_index, x + op - rotx * 2.5 + 2, y + roty, -1 + cos(siner / 2) * 0.2, 1 - cos(siner / 2) * 0.2, -rot, image_blend, 1);
        else 
            draw_sprite_ext(spr_lefteye_pupil , image_index, x + op - rotx * 2.5 + 2, y + roty, -0.5 + cos(siner / 2) * 0.1, 0.5 - cos(siner / 2) * 0.1, -rot, image_blend, 1);
    }
    if(desperate == 2)
        draw_sprite_ext(spr_lefteye_pupil , image_index, x + op - rotx * 3 + 2, y + roty, -0.6 + cos(siner / 2) * 0.3, 0.6 - cos(siner / 2) * 0.3, -rot, image_blend, 1);
}
if(md == 1) {
    draw_sprite_ext(spr_lefteye_nopupil_flash , image_index, x + op - rotx * 2 + 2, y + roty, -1, 1, -rot, grgr, 1);
    draw_sprite_ext(spr_lefteye_pupil_flash , image_index, x + op - rotx * 2.5 + 2, y + roty, -1 + cos(siner / 2) * 0.2, 1 - cos(siner / 2) * 0.2, -rot, gr, 1);
}
draw_sprite_ext(spr_lefteye_overlay , image_index, x + op - rotx, y + roty, -1, 1, -rot, image_blend, 1);


/*  */
