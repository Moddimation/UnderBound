if(pp[6] == 0 && pp[5] == 4 && pp[4] == 3 && pp[3] == 0 && pp[2] == 2 && pp[1] == 2 && pp[0] == 3)
    won= 1;
if(pp[7] == 0 && pp[6] == 4 && pp[5] == 3 && pp[4] == 0 && pp[3] == 2 && pp[2] == 0 && pp[1] == 2 && pp[0] == 3)
    won= 1;
if(pp[7] == 0 && pp[6] == 4 && pp[5] == 3 && pp[4] == 0 && pp[3] == 2 && pp[2] == 1 && pp[1] == 2 && pp[0] == 3)
    won= 1;
if(pp[12] == 4 && pp[11] == 8 && pp[10] == 7 && pp[9] == 4 && pp[8] == 6 && pp[7] == 6 && pp[6] == 7 && pp[5] == 4 && pp[4] == 7 && pp[3] == 4 && pp[2] == 6 && pp[1] == 6 && pp[0] == 7)
    won= 1;
if(oldmode == 1) {
    draw_set_color(16777215);
    draw_rectangle(78, 48, 220, 200, 0);
    draw_set_color(0);
    draw_rectangle(80, 50, 218, 198, 0);
    i= 0;
    while(i < 5) {
        draw_set_color(16777215);
        if(played[i] > 0) draw_set_color(65535);
        if(justplayed[i] > 0) draw_set_color(255);
        draw_rectangle(100 + i * 10 + 1, 100, 100 + i * 10 + 8, 150, 0);
        if(i > 0 && i < 5)
            draw_sprite(spr_pianoarrow , i - 1, 100 + i * 10 + 2, 158);
        if(num == i || i == num - 5) {
            draw_set_color(65280);
            draw_rectangle(100 + i * 10, 99, 100 + i * 10 + 9, 151, 1);
            draw_circle(100 + i * 10 + 4, 160, 4, 0);
        }
        if(i == num + 5) {
            draw_set_color(8421376);
            draw_rectangle(100 + i * 10, 99, 100 + i * 10 + 9, 151, 1);
            draw_circle(100 + i * 10 + 4, 160, 4, 0);
        }
        i++;
    }
    draw_set_color(65280);
    draw_set_font(2);
    draw_text(120, 60, string_hash_to_newline("X - Quit"));
}
if(oldmode != 1) {
    draw_sprite(spr_pxquit , 1, 44, 27);
    if(num == 0) {
        bonus= 0;
        if(justplayed[num] > 0) bonus= 1;
        draw_sprite(spr_neutralpbutton , 1 + bonus, 43, 58);
    }
    if(num == 1) {
        bonus= 0;
        if(justplayed[num] > 0) bonus= 1;
        draw_sprite(spr_leftpbutton , 1 + bonus, 54, 58);
    }
    if(num == 2) {
        bonus= 0;
        if(justplayed[num] > 0) bonus= 1;
        draw_sprite(spr_downpbutton , 1 + bonus, 70, 55);
    }
    if(num == 3) {
        bonus= 0;
        if(justplayed[num] > 0) bonus= 1;
        draw_sprite(spr_rightpbutton , 1 + bonus, 81, 58);
    }
    if(num == 4) {
        bonus= 0;
        if(justplayed[num] > 0) bonus= 1;
        draw_sprite(spr_uppbutton , 1 + bonus, 97, 55);
    }
}
if(won == 1 && wonned == 0 && global.flag[356] == 0) {
    buffer= 25;
    wonned= 1;
    alarm[1]= 20;
}

/* */
/*  */
