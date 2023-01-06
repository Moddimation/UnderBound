if(hurt == 0) {
    rotto= 0;
    siner++;
}
if(hurt == 1) {
    rotto++;
    x= parent.x + 8;
    siner= 28;
}
nowy= y + 120;
draw_sprite_ext(spr_pyropefootl , 0, x + 38, nowy - abs(-sin(siner / 14) * 20), 2, 2, abs(-sin(siner / 14) * 40), 16777215, 1);
draw_sprite_ext(spr_pyropefootr , 0, x + 60, nowy - abs(-sin(siner / 14) * 20), 2, 2, -abs(sin(siner / 14) * 40), 16777215, 1);
nowy-= 20 + abs(-sin(siner / 14) * 20);
i= 5;
while(i > -1) {
    draw_sprite_ext(spr_pyropebody , i, x, nowy, 2, 2, 0, 16777215, 1);
    nowy-= 12;
    nowy-= abs(sin((siner - i) / 14) * 6);
    i--;
}
if(hurt == 0)
    draw_sprite_ext(spr_pyropehead , siner / 10, x + 50, nowy - 30, 2, 2, sin(siner / 6) * 4 + sin(rotto) * 12, 16777215, 1);
if(hurt == 1)
    draw_sprite_ext(spr_pyropehead2 , siner / 10, x + 50, nowy - 30, 2, 2, sin(rotto) * 12, 16777215, 1);

/* */
/*  */
