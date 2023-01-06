thisnum= dmg;
if(thisnum >= 0) {
    place= 0;
    numadd= 10;
    if(thisnum >= numadd) {
        while(thisnum >= numadd) {
            place++;
            numadd*= 10;
        }
    }
} else  {
    thisnum= 0;
    place= 0;
}
thisnum2= thisnum;
i= place;
while(i >= 0) {
    numnum[i]= floor(thisnum2 / power(10, i));
    thisnum2-= numnum[i] * power(10, i);
    i--;
}
draw_set_color(0);
draw_rectangle(x - 1, ystart + 7, x + global.floweymaxhp * stretchfactor + 1, ystart + 28, 0);
draw_set_color(4210752);
draw_rectangle(x, ystart + 8, x + global.floweymaxhp * stretchfactor, ystart + 28, 0);
draw_set_color(65280);
if(apparenthp > 0)
    draw_rectangle(x, ystart + 8, x + apparenthp * stretchfactor, ystart + 28, 0);
i= place;
while(i >= 0) {
    draw_set_color(255);
    draw_sprite_ext(spr_dmgnum_o , numnum[i], x - 20 + stretchwidth / 2 - i * 32 + place * 16, y - 28, 1, 1, 0, 255, 1);
    i--;
}
if(y > ystart) {
    y= ystart;
    vspeed= 0;
    gravity= 0;
}


/*  */
