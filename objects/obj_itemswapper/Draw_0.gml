buffer++;
global.interact= 1;
if(buffer > 3) {
    boxno= 300;
    if(boxtype == 1) boxno= 312;
    xx= __view_get( e__VW.XView, view_current );
    yy= __view_get( e__VW.YView, view_current ) + 6;
    draw_set_color(16777215);
    draw_rectangle(8 + xx, 2 + yy, 312 + xx, 226 + yy, 0);
    draw_set_color(0);
    draw_rectangle(11 + xx, 5 + yy, 309 + xx, 223 + yy, 0);
    draw_set_font(2);
    draw_set_color(16777215);
    scr_itemname();
    i= 0;
    while(i < 8) {
        draw_set_color(16777215);
        draw_text(40 + xx, 30 + yy + i * 16, string_hash_to_newline(global.itemname[i]));
        if(global.item[i] == 0) {
            draw_set_color(255);
            draw_line(45 + xx, 40 + yy + i * 16, xx + 140, 40 + yy + i * 16);
        }
        i++;
    }
    draw_set_color(16777215);
    draw_text(50 + xx, yy + 9, string_hash_to_newline("INVENTORY"));
    draw_text(216 + xx, yy + 9, string_hash_to_newline("BOX"));
    scr_storagename(boxno);
    i= 0;
    while(i < 10) {
        draw_set_color(16777215);
        draw_text(186 + xx, 30 + yy + i * 16, string_hash_to_newline(global.itemname[i]));
        if(global.flag[boxno + i] == 0) {
            draw_set_color(255);
            draw_line(191 + xx, 40 + yy + i * 16, xx + 260, 40 + yy + i * 16);
        }
        i++;
    }
    draw_set_color(16777215);
    draw_line(xx + 156, yy + 40, xx + 156, yy + 190);
    draw_line(xx + 157, yy + 40, xx + 157, yy + 190);
    draw_text(xx + 100, yy + 197, string_hash_to_newline("Press [X] to Finish"));
    if(keyboard_check_pressed(39) && column != 1) {
        column= 1;
        c1y= c0y;
    }
    if(keyboard_check_pressed(37) && column != 0) {
        column= 0;
        c0y= c1y;
        if(c0y > 7) c0y= 7;
    }
    if(keyboard_check_pressed(38)) {
        if(column == 0 && c0y > 0) c0y--;
        if(column == 1 && c1y > 0) c1y--;
    }
    if(keyboard_check_pressed(40)) {
        if(column == 0 && c0y < 7) c0y++;
        if(column == 1 && c1y < 9) c1y++;
    }
    if(column == 0)
        draw_sprite(spr_heartsmall , 0, 24 + xx, 35 + yy + 16 * c0y);
    if(column == 1)
        draw_sprite(spr_heartsmall , 0, 172 + xx, 35 + yy + 16 * c1y);
    if(keyboard_multicheck_pressed(0) && buffer > 6) {
        if(column == 0) {
            script_execute(scr_storageget , global.item[c0y], boxno);
            if(noroom == 0) script_execute(scr_itemshift , c0y, 0);
        }
        if(column == 1) {
            script_execute(scr_itemget , global.flag[c1y + boxno]);
            if(noroom == 0) scr_storageshift(c1y, 0, boxno);
        }
    }
    if(keyboard_multicheck_pressed(16)) {
        global.interact= 0;
        if(spec == 1) global.menuno= 0;
        obj_overworldcontroller.buffer= -2;
        instance_destroy();
        exit;
    }
}


/*  */
