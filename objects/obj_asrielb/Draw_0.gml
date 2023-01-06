if(global.debug == 1) {
    if(keyboard_check_pressed(85)) turns--;
    if(keyboard_check_pressed(73)) turns++;
}
if(trcon >= 3) {
    if(instance_exists(obj_screenwhiter ))
        depth= obj_screenwhiter.depth + 2;
    draw_set_color(0);
    draw_rectangle(-100, -100, 800, 800, 0);
}


/*  */
