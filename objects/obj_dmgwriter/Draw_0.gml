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
if(thisnum > 0) {
    if(drawbar == 1) {
        draw_set_color(0);
        draw_rectangle(x - 1, ystart + 7, x + round(global.monstermaxhp[global.mytarget] * stretchfactor + 1), ystart + 21, 0);
        draw_set_color(4210752);
        draw_rectangle(x, ystart + 8, x + round(global.monstermaxhp[global.mytarget] * stretchfactor), ystart + 20, 0);
        draw_set_color(65280);
        if(apparenthp > 0)
            draw_rectangle(x, ystart + 8, round(x + apparenthp * stretchfactor), ystart + 20, 0);
    }
    i= place;
    while(i >= 0) {
        draw_set_color(255);
        if(stretchwidth <= 120)
            draw_sprite_ext(spr_dmgnum_o , numnum[i], x + 30 - i * 32 + place * 16, y - 28, 1, 1, 0, 255, 1);
        else 
            draw_sprite_ext(spr_dmgnum_o , numnum[i], x - 30 + stretchwidth / 2 - i * 32 + place * 16, y - 28, 1, 1, 0, 255, 1);
        i--;
    }
}
if(thisnum == 0) {
    draw_set_color(16777215);
    if(special == 0)
        draw_sprite_ext(spr_dmgmiss_o , 0, x - 10, y - 16, 1, 1, 0, 12632256, 1);
    if(special == 1) {
        draw_set_color(255);
        draw_set_font(1);
        ex= choose(0, 1, 2, 3, 4, 5);
        if(ex == 0)
            draw_text(x - 10, y - 10, string_hash_to_newline("Don\\'t worry about it."));
        if(ex == 1) draw_text(x - 10, y - 10, string_hash_to_newline("Absorbed"));
        if(ex == 2) draw_text(x - 10, y - 10, string_hash_to_newline("I\\'m lovin\\' it."));
        if(ex == 3)
            draw_text(x - 10, y - 10, string_hash_to_newline("But it didn\\'t work."));
        if(ex == 4) draw_text(x - 10, y - 10, string_hash_to_newline("nope"));
        if(ex == 5) draw_text(x - 10, y - 10, string_hash_to_newline("FAILURE"));
    }
}
if(y > ystart) {
    y= ystart;
    vspeed= 0;
    gravity= 0;
}


/*  */
