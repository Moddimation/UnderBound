soundbuffer++;
if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 130;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 1;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2 && hurtsies == 0 && !instance_exists(OBJ_WRITER )) {
    alarm[7]= 30;
    hurtsies= 1;
}
if(global.hurtanim[myself] == 5) {
    global.damage= 0;
    instance_create(x + sprite_width / 2 - 48, y - 24, obj_dmgwriter );
    // obj_dmgwriter
    with(189) alarm[2]= 30;
    global.myfight= 0;
    global.mnfight= 1;
    global.hurtanim[myself]= 0;
}
if(global.mnfight == 2 && attacked == 0) {
    pop= scr_monstersum();
    global.turntimer= 160;
    global.firingrate= 25;
    if(pop == 3) global.firingrate*= 2.4;
    if(pop == 2) global.firingrate*= 1.7;
    if(con2 > 0) hp-= 5;
    if(con2 == 0) {
        global.turntimer= 360;
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 40, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 45, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 50, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 130, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 135, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 140, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 220, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 225, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 230, blt_dummybullet );
        blt_parent_noborder.side= 2;
        repeat(6)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 310 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 360 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 410 + random(10), blt_dummybullet );
            gen.side= 3;
        }
    }
    if(con2 == 2) {
        global.turntimer= 260;
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 40, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 50, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 60, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 70, blt_dummybullet );
        gen= instance_create(global.idealborder[0] + random(c_borderwidth(0)) - 20, global.idealborder[2] - 80, blt_dummybullet );
        blt_parent_noborder.side= 2;
        gen= instance_create(global.idealborder[0] - 150, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 0;
        gen= instance_create(global.idealborder[0] - 160, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 0;
        gen= instance_create(global.idealborder[0] - 170, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 0;
        gen= instance_create(global.idealborder[0] - 180, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 0;
        gen= instance_create(global.idealborder[0] - 190, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 0;
        gen= instance_create(global.idealborder[1] + 270, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 1;
        gen= instance_create(global.idealborder[1] + 280, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 1;
        gen= instance_create(global.idealborder[1] + 290, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 1;
        gen= instance_create(global.idealborder[1] + 300, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 1;
        gen= instance_create(global.idealborder[1] + 310, global.idealborder[2] + random(80), blt_dummybullet );
        gen.side= 1;
        repeat(6)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 400 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 470 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 540 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 3 && hp >= 255) {
        global.turntimer= 220;
        g= 0;
        repeat(6)  {
            g++;
            gen= instance_create(global.idealborder[0] - 50 - g * 5, global.idealborder[2] + 100 + random(60), blt_dummybullet );
            gen.side= 0;
        }
        g= 0;
        repeat(6)  {
            g++;
            gen= instance_create(global.idealborder[1] + 150 + g * 5, global.idealborder[2] + random(60), blt_dummybullet );
            gen.side= 1;
        }
        g= 0;
        repeat(6)  {
            g++;
            gen= instance_create(global.idealborder[0] - 150 - g * 5, global.idealborder[2] + random(60), blt_dummybullet );
            gen.side= 0;
        }
        g= 0;
        repeat(6)  {
            g++;
            gen= instance_create(global.idealborder[1] + 50 + g * 5, global.idealborder[2] + 100 + random(60), blt_dummybullet );
            gen.side= 1;
        }
        repeat(6)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 270 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 310 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 360 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 3 && hp >= 999) {
        global.turntimer= 160;
        repeat(4)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 30 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 90 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 150 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 210 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 3 && hp < 255) {
        con2= 4;
        global.turntimer= 160;
        repeat(4)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 30 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 90 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 150 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 210 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 5 && type2 == 3) {
        type2= 4;
        global.turntimer= 240;
        choice= floor(random(4)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] - 40, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 0;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(4)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[1] + 20, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 1;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(7));
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] + 10 + i * 25, global.idealborder[2] - 150, blt_dummybullet );
                gen.side= 2;
                gen.type= 1;
            }
            i++;
        }
        repeat(4)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 290 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 300 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 310 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 5 && type2 == 2) {
        type2= 3;
        global.turntimer= 220;
        choice= floor(random(3)) + 2;
        choice2= floor(random(3)) + 2;
        choice3= floor(random(3)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] + 10 + i * 25, global.idealborder[2] - 50, blt_dummybullet );
                gen.side= 2;
                gen.type= 1;
            }
            if(i != choice2 && i != choice2 + 1) {
                gen= instance_create(global.idealborder[0] + 10 + i * 25, global.idealborder[2] - 110, blt_dummybullet );
                gen.side= 2;
                gen.type= 1;
            }
            if(i != choice3 && i != choice3 + 1) {
                gen= instance_create(global.idealborder[0] + 10 + i * 25, global.idealborder[2] - 170, blt_dummybullet );
                gen.side= 2;
                gen.type= 1;
            }
            i++;
        }
        repeat(4)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 260 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 270 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 280 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 5 && type2 == 1) {
        type2= 2;
        global.turntimer= 160;
        choice= floor(random(4)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] - 40, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 0;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(4)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[1] + 110, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 1;
                gen.type= 1;
            }
            i++;
        }
        repeat(4)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 160 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 170 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 180 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 5 && type2 == 0) {
        type2= 1;
        global.turntimer= 175;
        choice= floor(random(7));
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] + 10 + i * 25, global.idealborder[2] - 50, blt_dummybullet );
                gen.side= 2;
                gen.type= 1;
            }
            i++;
        }
        repeat(4)  {
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 170 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 180 + random(10), blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 190 + random(10), blt_dummybullet );
            gen.side= 3;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(type2 == 4) type2= 0;
    if(con2 == 17.5) {
        global.turntimer= 460;
        con2= 17;
        choice= floor(random(3)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] - 60, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 0;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(3)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[1] + 100, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 1;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(3)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] - 240, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 0;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(3)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[1] + 280, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 1;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(2)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[0] - 440, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 0;
                gen.type= 1;
            }
            i++;
        }
        choice= floor(random(3)) + 2;
        i= 0;
        while(i < 7) {
            if(i != choice && i != choice + 1) {
                gen= instance_create(global.idealborder[1] + 360, global.idealborder[3] - 25 - i * 25, blt_dummybullet );
                gen.side= 1;
                gen.type= 1;
            }
            i++;
        }
        gen= instance_create(global.idealborder[0] + 170, global.idealborder[3] + 60, blt_dummybullet );
        gen.side= 3;
        gen.type= 4;
        gen.sprite_index= spr_dummybot ;
        gen= instance_create(global.idealborder[0] + 100, global.idealborder[2] - 360, blt_dummybullet );
        gen.side= 2;
        gen.type= 4;
        gen.sprite_index= spr_dummybot ;
        i= 0;
        while(i < 6) {
            gen= instance_create(global.idealborder[0] + 20 + i * 30, global.idealborder[3] + 690, blt_dummybullet );
            gen.side= 3;
            gen.sprite_index= spr_dummybot ;
            gen.type= 4;
            gen= instance_create(global.idealborder[0] - 700, global.idealborder[2] + 30 + i * 30, blt_dummybullet );
            gen.type= 4;
            gen.side= 0;
            gen.sprite_index= spr_dummybot ;
            gen= instance_create(global.idealborder[1] + 690, global.idealborder[2] + 30 + i * 30, blt_dummybullet );
            gen.type= 4;
            gen.sprite_index= spr_dummybot ;
            gen.side= 1;
            i++;
        }
        blt_parent_noborder.dmg= global.monsteratk[myself];
    }
    if(con2 == 16) {
        global.turntimer= 280;
        i= 0;
        while(i < 5) {
            gen= instance_create(global.idealborder[0] + 180 - i * 40, global.idealborder[3] + 20 + i * 10, blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] - 110 - i * 10, global.idealborder[2] + 150 - i * 30, blt_dummybullet );
            gen.side= 0;
            gen= instance_create(global.idealborder[0] + 20 + i * 40, global.idealborder[2] - 200 - i * 10, blt_dummybullet );
            gen.side= 2;
            gen= instance_create(global.idealborder[1] + 280 + i * 10, global.idealborder[2] + 30 + i * 30, blt_dummybullet );
            gen.side= 1;
            i++;
        }
        blt_parent_noborder.type= 4;
        blt_dummybullet.sprite_index= spr_dummybot ;
        blt_parent_noborder.dmg= global.monsteratk[myself];
        con2= 17.5;
    }
    if(con2 == 15) {
        global.turntimer= 180;
        i= 0;
        while(i < 3) {
            gen= instance_create(global.idealborder[0] + 20 + i * 60, global.idealborder[3] + 20, blt_dummybullet );
            gen.side= 3;
            gen= instance_create(global.idealborder[0] - 40, global.idealborder[2] + 30 + i * 60, blt_dummybullet );
            gen.side= 0;
            gen= instance_create(global.idealborder[1] + 20, global.idealborder[2] + 30 + i * 60, blt_dummybullet );
            gen.side= 1;
            i++;
        }
        blt_parent_noborder.type= 4;
        blt_dummybullet.sprite_index= spr_dummybot ;
        blt_parent_noborder.dmg= global.monsteratk[myself];
        con2= 16;
    }
    if(con2 == 14) {
        global.turntimer= 180;
        gen= instance_create(global.idealborder[0] + 20, global.idealborder[3] + 20, blt_dummybullet );
        gen.side= 3;
        gen= instance_create(global.idealborder[0] + 50, global.idealborder[3] + 20, blt_dummybullet );
        gen.side= 3;
        gen= instance_create(global.idealborder[0] + 80, global.idealborder[3] + 20, blt_dummybullet );
        gen.side= 3;
        gen= instance_create(global.idealborder[0] + 110, global.idealborder[3] + 20, blt_dummybullet );
        gen.side= 3;
        gen= instance_create(global.idealborder[0] + 140, global.idealborder[3] + 20, blt_dummybullet );
        gen.side= 3;
        blt_parent_noborder.type= 4;
        blt_dummybullet.sprite_index= spr_dummybot ;
        blt_parent_noborder.dmg= global.monsteratk[myself];
        con2= 15;
    }
    gen.myself= myself;
    if(mycommand >= 0)
        global.msg[0]= "* Mad Dummy is doing an armless&  ska dance.";
    if(mycommand >= 25)
        global.msg[0]= "* Mad Dummy is bossing around&  its bullets.";
    if(mycommand >= 50)
        global.msg[0]= "* Mad Dummy glares into a&  mirror^1, then turns to you&  with the same expression.";
    if(mycommand >= 75) global.msg[0]= "* Mad Dummy is hopping mad.";
    if(mycommand >= 90)
        global.msg[0]= "* Smells like a clothing&  store.";
    if(global.monsterhp[myself] < 30)
        global.msg[0]= "* This message will NEVER&  happen.";
    if(con2 == 5)
        global.msg[0]= "* Mad Dummy is getting cotton&  all over the dialogue box.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* MAD DUMMY - ATK 30 DEF YES&* Because they\\'re a ghost^1,&  physical attacks will fail./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You tell Aaron to go away./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        mercymod= -10;
    }
    if(whatiheard == 3) {
        global.flag[147]= 1;
        global.msc= 0;
        global.msg[0]= "* You talk to the DUMMY^1.&* .../";
        global.msg[1]= "* It doesn\\'t seem much for&  conversation./";
        global.msg[2]= "* No one is happy with this./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(instance_exists(mypart1)) {
    mypart1.x= x + 50;
    mypart1.y= y + 10;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    global.mnfight= 1;
    global.myfight= 0;
    talked= 0;
    con= 5;
    mycommand= random(100);
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    con= 3;
    with(mypart1) event_user(1);
    snd_play(snd_damage );
    alarm[8]= 30;
}
if(talko == 3 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    talko= 0;
    next= 1;
    if(con2 == 1) {
        con2= 2;
        global.faceemotion= 0;
        global.msg[0]= "* Mad Dummy is looking&  nervous.";
    }
}
if(talko == 2 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    talko= 1;
}
if(talko == 1 && !instance_exists(OBJ_WRITER )) {
    hurtsies= 2;
    alarm[7]= 2;
    talko= 0;
}
if(next == 1 && global.turntimer < 2 && global.mnfight == 2) {
    global.turntimer= -1;
    global.mnfight= 3;
}
if(con2 == 3) {
    siner++;
    x= xstart + sin(siner / 20) * 90;
    y-= sin(siner / 5) * 2;
}
if(con2 == 4) {
    with(mypart1) {
        rotmod= 1.4;
        speedmod= 2.4;
    }
    siner= 0;
    x= xstart;
    y= ystart;
    con2= 5;
}
if(con2 == 5) {
    if(global.mnfight < 2) siner+= 0.25;
    if(global.mnfight == 2) {
        sinadd= global.turntimer / 500 - 0.16;
        if(sinadd < 0.02) sinadd= 0;
        siner+= sinadd;
    }
    x= xstart + sin(siner / 4) * 200;
    y= ystart + sin(siner / 2) * 50;
    if(global.mnfight == 3)
        global.msg[0]= "* Mad Dummy is getting cotton&  all over the dialogue box.";
}
if(con2 == 6) {
    if(distance_to_point(xstart, ystart) < 20 && speed > 0) {
        speed-= 0.5;
        move_towards_point(xstart, ystart, speed);
    }
    if(speed == 0) {
        con2= 7;
        global.typer= 33;
        global.msg[0]= "\\\\E1HEY GUYS!/%%";
        blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
        blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    }
}
if(con2 == 7 && !instance_exists(OBJ_WRITER )) {
    with(mypart1) {
        rotmod= 0.3;
        speedmod= 0.1;
    }
    global.turntimer= 333;
    with(blcon) instance_destroy();
    repeat(8)  {
        gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[3] + 10 + random(10), blt_dummybullet );
        gen.side= 3;
        gen.type= 2;
        gen.dmg= 1;
        gen= instance_create(global.idealborder[0] + 30 + random(c_borderwidth(0) - 70), global.idealborder[2] - 40 + random(10), blt_dummybullet );
        gen.side= 2;
        gen.type= 2;
        gen.dmg= 1;
        gen= instance_create(global.idealborder[0] - 26 - random(10), global.idealborder[3] - 25 - random(200), blt_dummybullet );
        gen.side= 0;
        gen.type= 2;
        gen.dmg= 1;
        gen= instance_create(global.idealborder[1] + 26 + random(10), global.idealborder[3] - 25 - random(200), blt_dummybullet );
        gen.side= 1;
        gen.type= 2;
        gen.dmg= 1;
    }
    con2= 8;
    alarm[4]= 30;
}
if(con2 == 9) {
    con2= 10;
    global.typer= 33;
    global.msg[0]= "\\\\E0Dummies^1.&Dummies^1!&DUMMIES!/";
    global.msg[1]= "\\\\E1Remember how I&said NOT to&shoot at me?/";
    global.msg[2]= "\\\\E0Well.../";
    global.msg[3]= "\\\\E3FAILURES^1!&YOU\\'RE FIRED^1!&YOU\\'RE ALL BEING&REPLACED!!!/%%";
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
}
if(con2 == 10) {
    global.turntimer= 999;
    if(instance_exists(OBJ_WRITER )) {
        if(OBJ_WRITER.stringno == 3) {
            with(mypart1) {
                rotmod= 2;
                speedmod= 7;
            }
            blt_dummybullet.sprite_index= spr_dummybullet_shock ;
        }
    } else  {
        with(mypart1) {
            rotmod= 0.1;
            speedmod= 0.1;
        }
        // blt_dummybullet
        with(659) {
            event_user(2);
            speed= 1;
            sprite_index= spr_dummybullet_sad ;
        }
        with(blcon) instance_destroy();
        con2= 11;
        alarm[4]= 40;
    }
}
if(con2 == 12) {
    global.turntimer= 10;
    con2= 13;
    global.typer= 33;
    global.msc= 0;
    global.msg[0]= "\\\\E0Hahaha^1.&Hahaha^1!&HAHAHA!/";
    global.msg[1]= "Now you\\'ll see&my true power:/";
    global.msg[2]= "Relying on people&that aren\\'t garbage!/%%";
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    talko= 3;
    global.msg[0]= "* Mechanical whirrs fill&  the room.";
}
if(con2 == 13) {
    if(instance_exists(OBJ_WRITER )) {
        if(OBJ_WRITER.stringno == 0) {
            with(mypart1) {
                rotmod= 0.8;
                speedmod= 10;
            }
        }
        if(OBJ_WRITER.stringno == 1) {
            with(mypart1) {
                rotmod= 1.4;
                speedmod= 2;
            }
        }
    } else  con2= 14;
    siner= 0;
}
if(con2 == 14 || con2 == 15 || con2 == 16 || con2 == 17 || con2 == 17.5) {
    siner+= 0.2;
    x= xstart + sin(siner / 2) * 60;
    y-= sin(siner * 2) * 8;
    if(con2 == 17 && global.turntimer < 30) {
        move_towards_point(xstart, ystart, 10);
        next= 0;
        con2= 18;
    }
}
if(con2 == 18) {
    con2= 19;
    global.typer= 33;
    with(mypart1) global.msc= 0;
    rotmod= 0.1;
    speedmod= 0.2;
    global.msg[0]= "\\\\E2(N..^1. no way!)/";
    global.msg[1]= "\\\\E2(These guys are&even WORSE than&the other guys!)/";
    global.msg[2]= "\\\\E3Who cares^1.&Who cares^1!&WHO CARES!!/";
    global.msg[3]= "I DON\\'T NEED&FRIENDS!!!/%%";
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
}
if(con2 == 19) {
    if(distance_to_point(xstart, ystart) < 30 && speed > 0) {
        speed--;
        move_towards_point(xstart, ystart, speed);
    }
    if(instance_exists(OBJ_WRITER )) {
        if(OBJ_WRITER.stringno == 3) {
            with(mypart1) {
                rotmod= 2.2;
                speedmod= 5;
            }
        }
    } else  {
        con2= 20;
        alarm[4]= 40;
        global.turntimer= 999;
        knife= instance_create(x - 50, y, blt_dummyknife );
        global.faceemotion= 0;
        with(blcon) instance_destroy();
    }
}
if(con2 == 21) {
    global.msg[0]= "\\\\E3I\\'VE GOT&KNIVES!!!/%%";
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    con2= 22;
}
if(con2 == 22) {
    global.turntimer= 999;
    if(!instance_exists(OBJ_WRITER )) {
        with(blcon) instance_destroy();
        with(knife) move_towards_point(obj_heart.x + 10, obj_heart.y + 10, 9);
        snd_play(snd_arrow );
        con2= 23;
        alarm[4]= 90;
    }
}
if(con2 == 24) {
    alarm[4]= 30;
    con2= 25;
}
if(con2 == 25) {
    with(mypart1) {
        if(rotmod > 0) rotmod-= 0.2;
        if(speedmod > 0) speedmod-= 0.2;
    }
}
if(con2 == 26) {
    sprite_index= spr_dummymask ;
    global.msg[0]= "\\\\E0I\\'m..^1./";
    global.msg[1]= "\\\\E2Out of knives./";
    global.msg[2]= "\\\\E3BUT IT DOESN\\'T&MATTER!!!/";
    global.msg[3]= "YOU CAN\\'T HURT&ME AND I CAN\\'T&HURT YOU!/";
    global.msg[4]= "YOU\\'LL BE STUCK&FIGHTING ME.../";
    global.msg[5]= "Forever./";
    global.msg[6]= "Forever!/";
    global.msg[7]= "FOREVER!!!!/";
    global.msg[8]= "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%";
    global.msg[9]= "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%";
    global.msg[10]= "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%";
    global.msg[11]= "AHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHAHA%";
    with(mypart1) {
        rotmod= 0;
        speedmod= 0;
    }
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    con2= 27;
}
if(con2 == 27 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 2) {
        with(mypart1) {
            rotmod= 2.5;
            speedmod= 5;
        }
    }
    if(OBJ_WRITER.stringno == 3) {
        with(mypart1) {
            rotmod= 3;
            speedmod= 6;
        }
    }
    if(OBJ_WRITER.stringno == 4) {
        with(mypart1) {
            rotmod= 5;
            speedmod= 6;
        }
    }
    if(OBJ_WRITER.stringno == 5) {
        with(mypart1) {
            rotmod= 0;
            speedmod= 0;
        }
    }
    if(OBJ_WRITER.stringno == 6) {
        with(mypart1) {
            rotmod= 2;
            speedmod= 2;
        }
    }
    if(OBJ_WRITER.stringno == 7) {
        with(mypart1) {
            rotmod= 8;
            speedmod= 3;
        }
    }
    if(OBJ_WRITER.stringno == 8) {
        with(mypart1) {
            rotmod= 12;
            speedmod= 3;
        }
    }
    if(OBJ_WRITER.stringno == 9) {
        repeat(23)  {
            blt= instance_create(x + 10 + random(20), -10 - random(1100), blt_crybullet2 );
            blt.dmg= 0;
            blt.gravity= 0;
            blt.friction= 0;
            size= 1 + random(1);
            blt.image_xscale= size;
            blt.image_yscale= size;
            blt.vspeed= 6;
            blt.hspeed/= 4;
            blt.gravity_direction= 270;
            global.turntimer= 9999;
        }
        con2= 28;
    }
}
if(con2 == 30) {
    global.msg[0]= "\\\\E2Wh..^1.&What the heck is&this!?/";
    global.msg[1]= "\\\\E3Ergh^1!&Acid rain!?!/";
    global.msg[2]= "Oh^1, FORGET IT^1!&I\\'m outta here!/%%";
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    con2= 31;
}
if(con2 == 31 && !instance_exists(OBJ_WRITER )) {
    with(blcon) instance_destroy();
    // blt_crybullet2
    with(633) instance_destroy();
    snd_play(snd_slidewhist );
    hspeed= 4;
    con2= 32;
    alarm[4]= 120;
}
if(con2 == 33) {
    blook= instance_create(xstart - 20, -200, obj_npc_marker );
    blook.image_alpha= 0;
    blook.visible= 1;
    blook.image_xscale= 2;
    blook.image_yscale= 2;
    blook.sprite_index= spr_napstabattle_leg ;
    blook.image_speed= 0.25;
    blook.vspeed= 4;
    con2= 34;
}
if(con2 == 34) {
    blook.image_alpha+= 0.025;
    if(blook.y > 14) {
        con2= 35;
        blook.vspeed= 0;
        alarm[4]= 30;
    }
}
if(con2 == 36) {
    global.typer= 33;
    global.msg[0]= "... sorry^1, i&interrupted you^1,&didn\\'t i?/";
    global.msg[1]= "as soon as i came&over^1, your friend&immediately left.../";
    global.msg[2]= "oh no..^1.&you guys looked&like you were having&fun.../";
    global.msg[3]= "oh no..^1.&i just wanted to&say hi.../";
    global.msg[4]= "oh no.................................................%%";
    if(global.flag[36] == 0) {
        global.msg[3]= "oh wait..^1. didn\\'t you&attack me before.../";
        global.msg[4]= "uhhh..^1.&that\\'s awkward./";
        global.msg[5]= "sorry^1.&have a nice day./%%";
    }
    blcon= instance_create(xstart + 100, ystart, obj_blconwdflowey );
    blconwdS= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    con2= 37;
}
if(con2 == 37) {
    if(instance_exists(OBJ_WRITER )) {
        if(OBJ_WRITER.stringno == 4 || OBJ_WRITER.stringno == 5)
            blook.image_alpha-= 0.03;
    } else  {
        con2= 38;
        with(blcon) instance_destroy();
        alarm[4]= 60;
    }
}
if(con2 == 39) {
    alarm[11]= 10;
    instance_create(0, 0, obj_unfader );
    con2= 40;
}


/*  */
