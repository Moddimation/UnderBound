draw_set_color(16777215);
xadd= sin(siner / 4) * 4;
yadd= cos(siner / 4) * 4;
draw_rectangle(x + xadd, obj_maintem.y + obj_maintem.sprite_height - 8, x + 4 + xadd, y + height + yadd, 0);
if(collision_rectangle(x + xadd, obj_maintem.y + obj_maintem.sprite_height - 8, x + 4 + xadd, y + height + yadd, 743, 0, 1))
    event_user(2);
draw_sprite(spr_temfoot , 0, x + xadd - 5, y + height + yadd);

/* */
/*  */
