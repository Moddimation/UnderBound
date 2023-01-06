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
    alarm[5]= 110;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        mypart1= instance_create(x, y, part1);
        global.hurtanim[myself]= 0;
        image_index= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
        killed= 1;
        instance_destroy();
    }
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
    global.firingrate= 3;
    if(pop == 3) global.firingrate*= 3;
    if(pop == 2) global.firingrate*= 2;
    type= 2;
    if(mycommand >= 0 && mycommand < 50) type= 1;
    if(clean == 1 || clean == 3) type= 1;
    if(type == 1) {
        global.turntimer= 180;
        if(pop == 1) global.turntimer= 150;
        if(pop == 1) global.firingrate= 3;
        global.firingrate+= dirtyjoke;
        if(dirtyjoke > 3) dirtyjoke= 2;
        if(pop > 1)
            gen= instance_create(global.idealborder[0] + c_borderwidth(0) / 2, global.idealborder[2] + 90 + c_borderheight(0) / 2, obj_woshspiralgen );
        if(pop == 1)
            gen= instance_create(global.idealborder[0] + c_borderwidth(0) / 2, global.idealborder[2] - 5 + c_borderheight(0) / 2, obj_woshspiralgen );
        if(pop == 1) {
            gen.blue= 0;
            if(mycommand) gen.turn= 6;
            qq= choose(0, 1);
            if(qq == 0) {
                gen.turn= -6;
                gen.backwards= 1;
            }
            gen.direction= 60 + random(40);
        }
        if(clean == 1) {
            gen.cleaner= 1;
            clean= 0;
        }
        if(clean == 3) {
            gen.cleaner= 1;
            clean= 2;
        }
        gen.dmg= global.monsteratk[myself];
    } else  {
        global.firingrate= 4;
        gen= instance_create(global.idealborder[0] + c_borderwidth(0) / 2, global.idealborder[2] - 60 + c_borderheight(0) / 2, blt_soapbul );
        gen.dmg= global.monsteratk[myself];
        if(pop > 1) gen.offset= 1;
        qd= 0;
        if(dirtyjoke > 0) qd= dirtyjoke * 0.5;
        if(qd > 1) qd= 1;
        gen.speed= 4 - qd;
        gen.bullettype= 0;
    }
    gen.myself= myself;
    if(mycommand >= 0)
        global.msg[0]= "* Woshua wonders if tears are&  sanitary.";
    if(mycommand >= 25)
        global.msg[0]= "* Woshua is friends with&  a little bird.";
    if(mycommand >= 50)
        global.msg[0]= "* Woshua is rinsing off a&  pizza.";
    if(mycommand >= 75)
        global.msg[0]= "* Woshua is looking for some&  good clean fun.";
    if(mycommand >= 90) global.msg[0]= "* Smells like detergent.";
    if(global.monsterhp[myself] < 30)
        global.msg[0]= "* Woshua is revolted at its own&  wounds.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* WOSHUA - ATK 18 DEF 5&* This humble germophobe seeks&  to cleanse the whole world./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You reach out^1.&* Woshua recoils from your&  touch./^";
        if(slime == 1) {
            global.msg[0]= "* Woshua is terrified of&  your slimy body!&* It runs away./^";
            mercymod= 333;
        }
        if(clean == 2)
            global.msg[0]= "* You give Woshua a friendly&  pat./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You ask Woshua to clean you^1.&* It hops around excitedly./^";
        if(clean == 2) global.msg[0]= "* Woshua continues cleaning./^";
        if(clean == 0) clean= 1;
        if(clean == 2) clean= 3;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        jj= floor(random(3));
        if(jj == 0)
            global.msg[0]= "* You tell a joke about two&  kids who played in a&  muddy flower garden./";
        if(jj == 1)
            global.msg[0]= "* You tell a joke about a kid&  who ate a pie with&  their bare hands./";
        if(jj == 2)
            global.msg[0]= "* You tell a joke about a kid&  who slept in the soil./";
        global.msg[1]= "* Woshua\\'s powers neutralized!/^";
        dirtyjoke++;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        if(instance_exists(obj_aaron )) {
            obj_aaron.whatiheard= 12;
            obj_aaron.mercymod= 450;
        }
        if(global.monsteratk[myself] > 3)
            global.monsteratk[myself]-= 2;
    }
    global.heard= 1;
}
if(whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1) {
    vspeed= -4;
    mypart1.vspeed= -4;
}
if(whatiheard == 3 && flex == 3 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(alphaup == 1 && image_alpha < 1)
    image_alpha+= 0.05;
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 333 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
