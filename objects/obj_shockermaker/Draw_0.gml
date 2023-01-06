dirface= point_direction(x, y, obj_heart.x + 5, obj_heart.y + 5);
diramt= point_distance(x, y, obj_heart.x + 5, obj_heart.y + 5);
imax= 20;
i= 0;
while(i < imax) {
    draw_sprite_ext(spr_shockpart , random(10), x + lengthdir_x(diramt, dirface) * i / imax + random(12), y + lengthdir_y(diramt, dirface) * i / imax + random(12), 1, 1, dirface, 16777215, 1);
    i++;
}
draw_sprite(spr_shockfinal , random(5), obj_heart.x - 5, obj_heart.y - 5);
obj_heart.x+= random(2) - 1;
obj_heart.y+= random(2) - 1;

/* */
/*  */
