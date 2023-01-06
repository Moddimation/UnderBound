if(sprite_index != 181) {
    dmgwriter= instance_create(x + sprite_width / 2 - 48, y + 80, obj_dmgwriter );
    global.damage= takedamage;
    with(dmgwriter) dmg= global.damage;
    sprite_index= spr_whimsunhurt ;
    snd_play(hurtsound);
    x= xstart;
    y= ystart;
    path_end();
    gravity= 0;
}
x+= shudder;
if(shudder < 0) shudder= -(shudder + 2);
else  shudder= -shudder;
if(shudder == 0) {
    global.hurtanim[myself]= 2;
    exit;
} else  {
    alarm[3]= 2;
    exit;
}

/* */
/*  */
