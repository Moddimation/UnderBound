stretchwidth= global.monsterinstance[global.mytarget].sprite_width;
stretchfactor= stretchwidth / global.monstermaxhp[global.mytarget];
apparenthp= global.monsterhp[global.mytarget];
actualhp= global.monsterhp[global.mytarget];
maxhp= global.monstermaxhp[global.mytarget];
negative= 0;
dmg= global.damage;
draw_set_color(255);
alarm[0]= 2;
i= 1;
if(dmg != 0) {
    vspeed= -4;
    gravity= 0.5;
    gravity_direction= 270;
}

