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
        global.hurtanim[myself]= 0;
        mypart1.pause= 0;
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
if(global.mnfight == 2) {
    if(attacked == 0) {
        pop= scr_monstersum();
        global.turntimer= 160;
        global.firingrate= 7;
        if(pop == 3) global.firingrate*= 2.4;
        if(pop == 2) global.firingrate*= 1.7;
        num= 0;
        if(whatiheard == 1) num= 1;
        if(global.hp < global.maxhp) num= 1;
        if(criticize == 0) {
            if(num == 1) {
                global.turntimer= 160;
                if(encourage > 0) global.firingrate-= 2;
                gen= instance_create(x, y, obj_lavafiregen );
                gen.dmg= global.monsteratk[myself];
            } else  {
                global.firingrate= 9;
                if(encourage > 0) global.firingrate-= 4;
                if(pop == 3) global.firingrate*= 2.6;
                if(pop == 2) global.firingrate*= 1.7;
                gen= instance_create((global.idealborder[0] + global.idealborder[1]) / 2 - 30, global.idealborder[2] + 2, obj_vulkincloudbul );
            }
        }
        if(mycommand >= 0)
            global.msg[0]= "* Vulkin parades around the&  room.";
        if(mycommand >= 25)
            global.msg[0]= "* Vulkin is making coffee&  in its crater.";
        if(mycommand >= 50)
            global.msg[0]= "* Vulkin is wiggling its&  weird rump.";
        if(mycommand >= 75)
            global.msg[0]= "* Vulkin makes a smoke hoop&  and jumps through it.";
        if(mycommand >= 90) global.msg[0]= "* Smells like a lava lamp.";
        if(hug > 0)
            global.msg[0]= "* Vulkin\\'s cheeks glow with&  a bright heat.";
        if(encourage > 0)
            global.msg[0]= "* Vulkin parades around you&  proudly.";
        if(criticize == 1) global.msg[0]= "* Vulkin stands in the corner.";
        if(criticize > 1)
            global.msg[0]= "* Little streams of lava come&  from Vulkin\\'s eyes.";
        if(specialmessage == 1) {
            global.msg[0]= "* Vulkin reassures you the&  plane turning tiny is^1, like^1,&  completely intentional.";
            specialmessage= 0;
        }
        attacked= 1;
    }
    if(criticize > 0 && pop == 1) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    if(criticize > 0 && scr_monstersum() >= 2 && instance_exists(global.monsterinstance[0]) && instance_exists(global.monsterinstance[1]) && global.monsterinstance[0] == 337 && global.monsterinstance[1] == 337 && global.monsterinstance[0].criticize > 0 && global.monsterinstance[1].criticize > 0) {
        global.turntimer= -1;
        if(global.mnfight == 2) global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* VULKIN - ATK 25 DEF 0&* Mistakenly believes its lava&  can heal people./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You tell Vulkin that its&  attacks are NOT helpful./^";
        if(criticize == 1)
            global.msg[0]= "* You tell Vulkin that its&  rump looks like a sack&  of trash./^";
        encourage= 0;
        criticize++;
        hug= 0;
        mercymod= -200;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        mercymod= 100;
        encourage++;
        criticize= 0;
        hug= 0;
        global.msg[0]= "* You tell Vulkin it\\'s doing&  a great job.&* Its attacks become extreme.../^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        mercymod= 100;
        encourage= 0;
        criticize= 0;
        hug++;
        global.msg[0]= "* You give Vulkin a hug^1.&* It warms your heart.../";
        if(global.df >= 5) {
            global.df-= 5;
            global.msg[1]= "* And your whole body!&* Ouch!&* Your DEFENSE dropped!/^";
        } else  global.msg[1]= "* Nothing else happened./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
