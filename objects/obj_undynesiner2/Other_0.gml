if(instance_exists(obj_undyneb_body )) {
    xx= obj_undyneb_body.x - 20;
    yy= obj_undyneb_body.y - 20;
}
if(drawngr == 1) sprite_delete(gr);
gr= sprite_create_from_screen_x(xx, yy, 240, obj_uborder.y - yy, 0, 0, 0, 0);
sprite_index= gr;
if(global.debug == 1 && keyboard_check(32)) {
    if(keyboard_check_pressed(39)) qq+= 0.2;
    if(keyboard_check_pressed(37)) qq-= 0.2;
    if(keyboard_check_pressed(40)) ww--;
    if(keyboard_check_pressed(38)) ww++;
}
scr_waver_height(qq, ww);
drawngr= 1;
idealww2= idealww + random(6);
if(ww > idealww2) ww--;
if(ww < idealww2) ww++;
if(idealww == 0.1 && ww < 2) instance_destroy();

/* */
/*  */
