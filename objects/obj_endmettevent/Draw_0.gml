siner++;
army= sin(siner / 4) * 1.5;
x+= cos(siner / 6);
draw_set_alpha(0.2);
draw_set_color(0);
draw_rectangle(-10, 100, 330, 0, 0);
draw_set_alpha(1);
draw_set_alpha(0.2);
draw_set_color(0);
draw_rectangle(-10, 80, 330, 0, 0);
draw_set_alpha(1);
if(leg == 0) draw_sprite(spr_mett_justwheel , 0, x, y + sprite_height);
if(leg == 1) {
    draw_sprite_ext(spr_mett_justleg , 0, x + 3 + legx, y + 17, 1, 1, legrot_r, 16777215, 1);
    draw_sprite_ext(spr_mett_justleg , 0, x - 2 + legx, y + 17, -1, 1, legrot_l, 16777215, 1);
    legx= sin(siner / 4);
}
draw_sprite_ext(spr_mett_justarm , 0, x + 13, y + 9 + army + bodyy, 1, 1, 0, 16777215, 1);
draw_sprite_ext(spr_mett_justarm , 0, x - 12, y + 9 - army + bodyy, -1, 1, 0, 16777215, 1);
draw_sprite(sprite_index, floor(siner / 6), x, y + bodyy);
if(active == 1) timer++;
if(timer >= 5 && timer <= 35 && bodyy < 13)
    bodyy+= 0.5;
if(timer >= 80) {
    leg= 1;
    if(bodyy > -15) bodyy-= 0.5;
}
if(timer >= 120 && timer <= 126)
    legrot_l-= 8;
if(timer >= 132 && timer <= 138)
    legrot_l+= 8;
if(timer >= 146 && timer <= 152)
    legrot_r+= 8;
if(timer >= 158 && timer <= 164)
    legrot_r-= 8;
if(timer == 170) timer= 119;
main_timer++;
if(main_timer >= 40 && main_timer <= 160) {
    tile_layer_shift(900, -1, 0);
    tile_layer_shift(890, 1, 0);
}
if(main_timer == 180) active= 1;
shyren.y+= sin(siner / 4);
if(main_timer < 0) {
    if(__view_get( e__VW.YView, 0 ) > 0) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (4) );
    else  __view_set( e__VW.YView, 0, 0 );
}
if(main_timer == 90) {
    t1= instance_create(20, 160, obj_creditsword );
    t1.text= "METTATON";
    t1.text2= "by Toby";
}
if(main_timer == 250) t1.fader= 1;
if(main_timer == 260) {
    t2= instance_create(20, 160, obj_creditsword );
    t2.text= "SPECIAL INSPIRATION";
    t2.text2= "Bob Sparker, Sarah, and JN Wiedle";
}
if(main_timer == 430) t2.fader= 1;
if(main_timer > 450) {
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (4) );
    if(__view_get( e__VW.YView, 0 ) > 240) {
        global.cast_type= 3;
        room_goto(278);
    }
}


/*  */
