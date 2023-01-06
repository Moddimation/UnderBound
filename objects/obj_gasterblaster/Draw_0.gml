draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if(con == 1 && skip == 0) {
    x+= floor((idealx - x) / 3);
    y+= floor((idealy - y) / 3);
    if(x < idealx) x++;
    if(y < idealy) y++;
    if(x > idealx) x--;
    if(y > idealy) y--;
    if(abs(x - idealx) < 3) x= idealx;
    if(abs(y - idealy) < 3) y= idealy;
    if(abs(x - idealx) < 0.1 && abs(y - idealy) < 0.1) {
        con= 2;
        alarm[4]= 2;
    }
}
if(con == 1 && skip == 1) {
    x+= floor((idealx - x) / 3);
    y+= floor((idealy - y) / 3);
    if(x < idealx) x++;
    if(y < idealy) y++;
    if(x > idealx) x--;
    if(y > idealy) y--;
    if(abs(x - idealx) < 3) x= idealx;
    if(abs(y - idealy) < 3) y= idealy;
    image_angle+= floor((idealrot - image_angle) / 3);
    if(image_angle < idealrot)
        image_angle++;
    if(image_angle > idealrot)
        image_angle--;
    if(abs(image_angle - idealrot) < 3)
        image_angle= idealrot;
    if(abs(x - idealx) < 0.1 && abs(y - idealy) < 0.1 && abs(idealrot - image_angle) < 0.01) {
        con= 4;
        alarm[4]= pause;
    }
}
if(con == 3) {
    image_angle+= floor((idealrot - image_angle) / 3);
    if(image_angle < idealrot)
        image_angle++;
    if(image_angle > idealrot)
        image_angle--;
    if(abs(image_angle - idealrot) < 3)
        image_angle= idealrot;
    if(abs(idealrot - image_angle) < 0.01) {
        con= 4;
        alarm[4]= pause;
    }
}
if(con == 5) {
    con= 6;
    alarm[4]= 4;
}
if(con == 6) image_index++;
if(con == 7) {
    if(image_index == 4) image_index= 5;
    else  {
        if(image_index == 5) image_index= 4;
    }
    direction= idealrot + 90;
    if(btimer == 0) {
        // obj_sansb
        with(519) p_beam= 1;
    }
    if(btimer == 0 && image_xscale >= 2) {
        sh= instance_create(0, 0, obj_sans_shaker );
        sh.intensity= 5;
    }
    btimer++;
    if(btimer < 5) {
        speed++;
        bt+= floor(35 * image_xscale / 4);
    } else  speed+= 4;
    if(btimer > 5 + terminal) {
        bt*= 0.8;
        fade-= 0.1;
        draw_set_alpha(fade);
        if(bt <= 2) instance_destroy();
    }
    if(x < -sprite_width) speed= 0;
    if(x > room_width + sprite_width) speed= 0;
    if(y > room_height + sprite_height) speed= 0;
    if(x < -sprite_height) speed= 0;
    bbsiner++;
    bb= sin(bbsiner / 1.5) * bt / 4;
    xx= lengthdir_x(70, image_angle - 90) * image_xscale / 2;
    yy= lengthdir_y(70, image_angle - 90) * image_xscale / 2;
    rr= random(2) - random(2);
    rr2= random(2) - random(2);
    xxx= lengthdir_x(1000, image_angle - 90);
    yyy= lengthdir_y(1000, image_angle - 90);
    draw_set_color(16777215);
    draw_line_width(x + xx + rr, y + yy + rr2, x + xxx + rr, y + yyy + rr2, bt + bb);
    xxa= lengthdir_x(50, image_angle - 90) * image_xscale / 2;
    yya= lengthdir_y(50, image_angle - 90) * image_xscale / 2;
    xxb= lengthdir_x(60, image_angle - 90) * image_xscale / 2;
    yyb= lengthdir_y(60, image_angle - 90) * image_xscale / 2;
    draw_line_width(x + xx + rr, y + yy + rr2, x + xxa + rr, y + yya + rr2, bt / 2 + bb);
    draw_line_width(x + xx + rr, y + yy + rr2, x + xxb + rr, y + yyb + rr2, bt / 1.25 + bb);
    nx_factor= lengthdir_x(1, image_angle);
    ny_factor= lengthdir_y(1, image_angle);
    if(col_o == 1 && fade >= 0.8) {
        cl= 0;
        while(cl < 4) {
            if(collision_line(x + xx - nx_factor * bt / 2 * cl / 4, y + yy - ny_factor * bt / 2 * cl / 4, x + xxx - nx_factor * bt / 2 * cl / 4, y + yyy - ny_factor * bt / 2 * cl / 4, 743, 0, 1))
                event_user(7);
            cl++;
        }
        cl= 0;
        while(cl < 4) {
            if(collision_line(x + xx + nx_factor * bt / 2 * cl / 4, y + yy + ny_factor * bt / 2 * cl / 4, x + xxx + nx_factor * bt / 2 * cl / 4, y + yyy + ny_factor * bt / 2 * cl / 4, 743, 0, 1))
                event_user(7);
            cl++;
        }
    }
    if(col_o == 0) col_o= 1;
    draw_set_alpha(1);
}


/*  */
