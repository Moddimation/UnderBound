if(global.turntimer > 0) {
    depth= -1000;
    draw_set_color(255);
    global.turntimer--;
}
if(instance_exists(obj_uborder )) {
    depth= 5;
    draw_set_color(0);
    if(drawrect == 1)
        draw_rectangle(obj_uborder.x + 5, obj_uborder.y + 5, obj_rborder.x, obj_dborder.y, 0);
}
if(__background_get_colour( ) != 16777215 && drawbinfo == 1)
    script_execute(scr_binfowrite );
if(global.bmenuno == 1 && global.myfight == 0 && global.mnfight == 0) {
    xwrite= 1;
    i= 0;
    while(i < 3) {
        if(global.monster[i] == 1) {
            ywrite= string_length(global.monstername[i]);
            if(ywrite > xwrite) xwrite= ywrite;
        }
        i++;
    }
    xwrite= 190 + xwrite * 16;
    i= 0;
    while(i < 3) {
        if(global.monster[i] == 1 && !instance_exists(obj_sansb )) {
            draw_set_color(255);
            draw_rectangle(xwrite, 280 + i * 32, xwrite + 100, 280 + i * 32 + 16, 0);
            draw_set_color(65280);
            draw_rectangle(xwrite, 280 + i * 32, xwrite + global.monsterhp[i] / global.monstermaxhp[i] * 100, 280 + i * 32 + 16, 0);
        }
        i++;
    }
}


/*  */
