myx= global.monsterinstance[myself].x;
myy= global.monsterinstance[myself].y;
blt1= instance_create(myx + 52, myy + 48, blt_crybullet );
blt2= instance_create(myx + 82, myy + 58, blt_crybullet );
blt1.dmg= dmg;
blt2.dmg= dmg;
alarm[0]= global.firingrate;


/*  */
