siner++;
cary= sin(siner / 2);
__background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) - (0.25) );
__background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) - (0.1) );
draw_sprite(spr_papcar_back , image_index, x - 20, y + 8 + cary);
draw_sprite(spr_papcar_shadow , floor(siner / 2), x - 20, y + 8);
draw_sprite_part(sprite_index, floor(image_index), 0, 0, sprite_width, 34, x, y);
draw_sprite(spr_papcar_tires , floor(siner / 2), x - 20, y + 8);
draw_sprite(spr_papcar_chassis , image_index, x - 20, y + 8 + cary);
if(timer < 5) {
    if(__view_get( e__VW.YView, 0 ) > 0) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (3) );
    else  __view_set( e__VW.YView, 0, 0 );
}
bgx-= 4;
tile_layer_shift(1000000, -4, 0);
if(bgx <= -320) {
    tile_layer_shift(1000000, 320, 0);
    bgx+= 320;
}
if(x >= 0 && td == 0) {
    t1= instance_create(20, 150, obj_creditsword );
    t1.text= "PAPYRUS";
    t1.text2= "by Toby&Temmie";
    td= 1;
}
if(x >= xstart && timer < 170) {
    x= xstart;
    hspeed= 0;
}
if(sans.x > 0 && td == 1) {
    t2= instance_create(180, 150, obj_creditsword );
    t2.text= "SANS";
    t2.text2= "by Toby";
    td= 2;
}
if(sans.x >= x) {
    sans.sprite_index= spr_sans_trike_wink ;
    if(timer < 60) sans.hspeed= 0;
    else  sans.hspeed= 2;
    timer++;
}
if(sans.x > x + 40) {
    if(td == 2) {
        t1.fader= 1;
        t2.fader= 1;
        t3= instance_create(20, 150, obj_creditsword );
        t3.text= "SPECIAL INSPIRATION";
        t3.text2= "JN Wiedle";
        td= 3;
    }
    sans.sprite_index= spr_sans_trike ;
    if(sans.y > 60) sans.y-= 3;
    else  sprite_index= spr_papyrus_mad1 ;
}
if(timer == 200) {
    gravity_direction= 355;
    gravity= 0.3;
    hspeed= -3;
}
if(timer > 200) siner++;
if(timer > 240 && td == 3) {
    t3.fader= 1;
    td= 4;
}
if(timer >= 260) {
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (4) );
    if(__view_get( e__VW.YView, 0 ) >= 200) {
        global.cast_type= 1;
        room_goto(278);
    }
}


/*  */
