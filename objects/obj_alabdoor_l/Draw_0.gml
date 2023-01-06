if(side == 0) {
    if(active == 1 && instance_exists(obj_mainchara )) {
        if(distance_to_object(1570) < 40) {
            if(open == 0) caster_play(121, 1, 1);
            open= 1;
        }
        if(distance_to_object(1570) > 50) {
            if(open == 1) caster_play(120, 1, 1);
            open= 0;
        }
    }
    if(open == -1) open= 0;
    if(doorx < 7)
        draw_sprite_part(1873, 0, 0, 0, 8 - doorx, 61, x, y + 4);
    if(doorx < 7)
        draw_sprite_part(1873, 0, doorx, 0, 8 - doorx, 61, x + 6 + doorx, y + 10);
    if(open == 1 && doorx < 8) doorx++;
    if(open == 0 && doorx > 0) doorx--;
    draw_sprite(spr_labdoor_hang , 0, x, y);
}
if(side == 1) {
    if(active == 1 && instance_exists(obj_mainchara )) {
        if(distance_to_object(1570) < 30) {
            if(open == 0) caster_play(121, 1, 1);
            open= 1;
        }
        if(distance_to_object(1570) > 50) {
            if(open == 1) caster_play(120, 1, 1);
            open= 0;
        }
    }
    if(open == -1) open= 0;
    if(doorx < 7)
        draw_sprite_part(1870, 0, 0, 0, 8 - doorx, 61, x + 19, y + 10);
    if(doorx < 7)
        draw_sprite_part(1870, 0, doorx, 0, 8 - doorx, 61, x + 25 + doorx, y + 4);
    if(open == 1 && doorx < 8) doorx++;
    if(open == 0 && doorx > 0) doorx--;
    draw_sprite(spr_labdoor_hang_r , 0, x, y);
}


/*  */
