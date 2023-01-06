if(instance_exists(obj_uborder )) {
    if(obj_uborder.y < 240) y= ystart - 4 - 240 - obj_uborder.y;
    else  y= ystart;
}
if(hurt == 1) {
    x= parent.x + 62;
    siner= 0;
    eye[0]= 0;
    eye[1]= 0;
    eye[2]= 0;
    eye[3]= 0;
    eye[4]= 0;
}
if(pauser == 1) {
    siner= 0;
    eye[0]= 0;
    eye[1]= 0;
    eye[2]= 0;
    eye[3]= 0;
    eye[4]= 0;
}
heady= y + sin(siner / 5) * 4;
hairrot= sin(siner / 5) * 25;
draw_sprite_ext(spr_spiderb_upperarm , 0, x + 14, y + 86 + 26 + cos(siner / 5), -2, 2, -sin(siner / 5) * 6, 16777215, 1);
draw_sprite_ext(spr_spiderb_shoulder , 0, x + 42, y + 86 + cos(siner / 5), -2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_spiderb_upperarm , 0, x + 78, y + 86 + 26 + cos(siner / 5), 2, 2, sin(siner / 5) * 6, 16777215, 1);
draw_sprite_ext(spr_spiderb_shoulder , 0, x + 50, y + 86 + cos(siner / 5), 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_spiderb_hair , 0, x + 80, heady * 1.02 + 18, 2, 2, hairrot, 16777215, 1);
draw_sprite_ext(spr_spiderb_hair , 0, x + 12, heady * 1.02 + 18, -2, 2, -hairrot, 16777215, 1);
draw_sprite_ext(spr_spiderb_head , 0, x, heady, 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_spiderb_legs , 0, x + 30, y + 162, 2, 2, 0, 16777215, 1);
arm= 0;
if(sin(siner / 5) < 0) arm= 1;
draw_sprite_ext(spr_spiderb_lowarm , arm, x + 26, y + 130 + sin(siner / 5), 2, 2, sin(siner / 5) * 8 - 8, 16777215, 1);
draw_sprite_ext(spr_spiderb_lowarm , arm, x + 64, y + 130 + sin(siner / 5), -2, 2, -(sin(siner / 5) * 8) + 8, 16777215, 1);
if(mode == 0) {
    draw_sprite_ext(spr_spiderb_teapot , 0, x - 22, y + 104 + cos(siner / 5) * 2, 2, 2, -sin(siner / 5) * 24, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm , 0, x + 12, y + 116 + cos(siner / 5) * 2, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm2 , 0, x + 12, y + 130 + cos(siner / 5) * 2, 2, 2, sin(siner / 5) * 3, 16777215, 1);
}
if(mode == 0) {
    draw_sprite_ext(spr_spiderb_teapot , 0, x + 114, y + 104 + cos(siner / 5) * 2, -2, 2, -sin(siner / 5) * 24, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm , 0, x + 80, y + 116 + cos(siner / 5) * 2, -2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm2 , 0, x + 80, y + 130 + cos(siner / 5) * 2, -2, 2, sin(siner / 5) * 3, 16777215, 1);
}
if(mode == 1) {
    if(sinert < 55) {
        if(pour == 0) alarm[5]= 1;
        pour= 1;
    } else  sinert--;
    draw_sprite_ext(spr_spiderb_teapot , 0, x - 22, y + 104 + cos(sinert / 5) * 2, 2, 2, -sin(sinert / 5) * 36, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm , 0, x + 12, y + 116 + cos(sinert / 5) * 2, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm2 , 0, x + 12, y + 130 + cos(sinert / 5) * 2, 2, 2, sin(sinert / 5) * 3, 16777215, 1);
    draw_sprite_ext(spr_spiderb_teapot , 0, x + 114, y + 104 + cos(sinert / 5) * 2, -2, 2, sin(sinert / 5) * 36, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm , 0, x + 80, y + 116 + cos(sinert / 5) * 2, -2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_midarm2 , 0, x + 80, y + 130 + cos(sinert / 5) * 2, -2, 2, sin(sinert / 5) * 3, 16777215, 1);
}
draw_sprite_ext(spr_spiderb_pants , 0, x + 20, y + 114 + sin(siner / 5), 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_spiderb_shirt , 0, x + 28, y + 92 + sin(siner / 5) * 2, 2, 2, 0, 16777215, 1);
i= 0;
while(i < 5) {
    if(anim > 0 + i * 5 && anim < 7 + i * 5)
        eye[i]+= 0.5;
    if(anim > 12 + i * 5 && anim < 16 + i * 5)
        eye[i]--;
    if(anim > 70 && anim < 77)
        eye[i]+= 0.5;
    if(anim > 88 && anim < 95)
        eye[i]-= 0.5;
    i++;
}
if(hurt == 0) {
    draw_sprite_ext(spr_spiderb_eyebig , eye[0], x + 24, heady + 42, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyemed , eye[1], x + 30, heady + 32, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyecen , eye[2], x + 42, heady + 26, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyemed , eye[3], x + 62, heady + 32, -2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyebig , eye[4], x + 68, heady + 42, -2, 2, 0, 16777215, 1);
}
if(hurt == 1) {
    draw_sprite_ext(spr_spiderb_eyebig_hurt , eye[0], x + 24, heady + 42, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyemed_hurt , eye[1], x + 30, heady + 32, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyecen_hurt , eye[2], x + 42, heady + 26, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyemed_hurt , eye[3], x + 62, heady + 32, -2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_spiderb_eyebig_hurt , eye[4], x + 68, heady + 42, -2, 2, 0, 16777215, 1);
}
if(hurt == 0) siner++;
anim++;
if(anim > 110) anim= 0;
if(instance_exists(obj_uborder ) && purple > 0) {
    depth= -5;
    purple2= purple;
    if(purple2 > obj_dborder.y - obj_uborder.y) {
        if(purpletime == 0) {
            with(parent) event_user(2);
            purpletime= 1;
            with(parent) alarm[4]= 60;
        }
        purple2= obj_dborder.y - obj_uborder.y;
    }
    if(purple > 125 && mode == 1) event_user(1);
    draw_set_color(8388736);
    if(purple > 160) {
        draw_set_alpha(1 - (purple - 160) / 40);
        if(1 - (purple - 160) / 40 < 0.1) depth= 5;
    }
    if(purple > 210) {
        purple= 0;
        depth= 5;
    }
    draw_rectangle(obj_lborder.x + 2, obj_dborder.y - purple2, obj_rborder.x + 2, obj_dborder.y + 2, 0);
    draw_set_alpha(1);
}

/* */
/*  */
