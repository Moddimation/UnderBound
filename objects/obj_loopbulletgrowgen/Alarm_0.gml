if(blue == 1) blue= floor(random(2)) + 1;
i= 0;
while(i < totalbt) {
    dir= 0 + i * 360 / totalbt;
    xx= x + lengthdir_x(radius, dir - 90);
    yy= y + lengthdir_y(radius, dir - 90);
    loopbullet= instance_create(xx, yy, blt_loopbulletgrow );
    loopbullet.speed= speed;
    loopbullet.anglechange= 360 / circ / speed;
    loopbullet.direction= dir;
    loopbullet.xadd= xadd;
    loopbullet.idealradius= idealradius;
    loopbullet.dmg= global.monsteratk[myself];
    loopbullet.specialtimer= specialtimer;
    if(blue == 3) blue= 2;
    if(blue == 1) {
        loopbullet.blue= 1;
        blue= 3;
    }
    if(blue == 2) blue= 1;
    i++;
}


/*  */
