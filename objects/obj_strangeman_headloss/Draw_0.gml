if(shake > 0) {
    x= nowx + random(shake) - random(shake);
    y= nowy + random(shake) - random(shake);
}
if(walking == 1) nowx--;
if(active == 1) {
    atimer++;
    if(atimer > 5 && trueindex < 5)
        trueindex++;
}
draw_sprite_ext(sprite_index, 0, x, y, 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_growneck , trueindex, x, y, 2, 2, 0, 16777215, 1);

/* */
/*  */
