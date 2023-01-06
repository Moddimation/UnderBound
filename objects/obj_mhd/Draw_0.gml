if(spec == 0) {
    i= 0;
    while(i < rno[0]) {
        xx= x + lengthdir_x(r[0], rang[0] + i * 360 / rno[0]);
        yy= y + lengthdir_y(r[0], rang[0] + i * 360 / rno[0]);
        draw_sprite_ext(spr_monsterheart_place , 0, xx, yy, 1, 1, 0, 16777215, image_alpha);
        i++;
    }
}
if(spec == 1) {
    i= 0;
    while(i < rno[0]) {
        xx= x + lengthdir_x(r[0], rang[0] + i * 360 / rno[0]);
        yy= y + lengthdir_y(r[0], rang[0] + i * 360 / rno[0]);
        if(i == 0) col= 16776960;
        if(i == 1) col= 16711680;
        if(i == 2) col= 32768;
        if(i == 3) col= 65535;
        if(i == 4) col= 4235519;
        if(i == 5) col= 8388736;
        draw_sprite_ext(spr_humanheart_place , 0, xx, yy, 1, 1, 0, col, image_alpha);
        i++;
    }
}
rang[0]+= raspeed[0];
r[0]+= rspeed[0];
if(image_alpha < 1) image_alpha+= 0.02;
if(spec == 1 && r[0] > 30) {
    r[0]= 30;
    alarm[5]= -1;
    rspeed[0]= 0;
    depth= -2;
}

/* */
/*  */
