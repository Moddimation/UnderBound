if(sprite_index != 192) {
    dmgwriter= instance_create(x + sprite_width / 2 - 48, y + 80, obj_dmgwriter );
    global.damage= takedamage;
    with(dmgwriter) dmg= global.damage;
    sprite_index= spr_vegetoidhurt ;
    snd_play(hurtsound);
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