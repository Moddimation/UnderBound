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
    alarm[5]= 15;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 16;
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
    global.turntimer= 120;
    global.firingrate= 15;
    if(pop == 3) global.firingrate*= 2.4;
    if(pop == 2) global.firingrate*= 1.7;
    if(mycommand >= 0 && mycommand <= 50) {
        gen= instance_create(x, y, obj_sleepdog );
        global.border= 3;
        gen.bullettype= 1;
    } else  {
        global.turntimer= 90;
        global.border= 8;
        gen= instance_create(x, y, blt_dogspear );
        gen.bullettype= 0;
    }
    gen.myself= myself;
    if(mycommand >= 0)
        global.msg[0]= "* Greater Dog is watching you&  intently.";
    if(mycommand >= 45)
        global.msg[0]= "* Greater Dog is waiting for&  your command.";
    if(mycommand >= 90)
        global.msg[0]= "* It smells like freshly-&  squeezed puppy juice.";
    if(close == 1)
        global.msg[0]= "* Greater Dog is seeking&  affection.";
    if(dogignore > 0)
        global.msg[0]= "* Greater Dog just wants&  affection.";
    if(dogignore > 2)
        global.msg[0]= "* Greater Dog is making&  puppy-dog eyes.";
    if(pet == 1)
        global.msg[0]= "* Greater Dog is patting the&  ground with its front paws.";
    if(pet == 2) global.msg[0]= "* Greater Dog wants some TLC.";
    if(pet == 3) global.msg[0]= "* Pet capacity is 40-percent.";
    if(pet == 4) global.msg[0]= "* Greater Dog is contented.";
    if(global.monsterhp[myself] < 30)
        global.msg[0]= "* Greater Dog is panting&  slowly.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* GREATER DOG - ATK 15 DEF 8&* It\\'s so excited that it&  thinks fighting is just play./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        if(close == 1)
            global.msg[0]= "* The Greater Dog\\'s ears&  perk up^1.&* Nothing else happens./^";
        if(close == 0) {
            global.msg[0]= "* You call the Greater Dog./";
            global.msg[1]= "* It bounds towards you^1,&  flecking slobber into your&  face./^";
            close= 1;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 2) {
        global.msc= 0;
        if(dogignore < 4) {
            global.msg[0]= "* Greater Dog inches closer./^";
            dogignore++;
            close= 1;
        }
        if(dogignore == 4)
            global.msg[0]= "* Greater Dog decides you are&  too boring./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(pet > 0) global.monsterdef[myself]= -20;
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You pet the dog./^";
        if(pet == 4) global.msg[0]= "* Tummy rubs are forbidden./^";
        if(pet == 3) {
            pet= 4;
            global.msg[0]= "* You pet decisively^1.&* Pet capacity reaches 100&  percent./";
            global.msg[1]= "* The dog flops over with&  its legs hanging in the air./^";
            global.sp= obj_battlecontroller.tempspd;
            mercymod= 9999;
            global.flag[142]= 1;
        }
        if(pet == 2) {
            global.msg[0]= "* As you pet the dog^1,&  it sinks its entire weight&  into you.../";
            global.msg[1]= "* Your movements slow./";
            global.msg[2]= "* But^1, you still haven\\'t&  pet enough...!/^";
            global.sp= 3;
            pet= 3;
        }
        if(pet == 1)
            global.msg[0]= "* Greater Dog\\'s excitement is&  creating a power field that&  prevents petting./^";
        if(close == 1 && pet == 0) {
            global.msg[0]= "* Greater Dog curls up in&  your lap as it is&  pet by you./";
            global.msg[1]= "* It gets so comfortable&  it falls asleep.../";
            global.msg[2]= "* Zzzzz.../";
            global.msg[3]= "* .../";
            global.msg[4]= "* Then it wakes up^1!&* It\\'s so excited!/^";
            pet= 1;
        }
        if(close == 0)
            global.msg[0]= "* Greater Dog is too far&  away to pet^1.&* You just pet the air./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You play with the dog./^";
        if(pet > 1)
            global.msg[0]= "* Greater Dog is too tired&  to play./^";
        if(pet == 1) {
            global.msg[0]= "* You make a snowball and&  throw it for the dog&  to fetch./";
            global.msg[1]= "* It splats on the ground./";
            global.msg[2]= "* Greater Dog picks up all&  the snow in the area&  and brings it to you./";
            global.msg[3]= "* Now dog is very tired..^1.&* It rests its head on you.../^";
            pet= 2;
        }
        if(pet == 0)
            global.msg[0]= "* Greater Dog is not excited&  enough to play with./^";
        global.msc= 0;
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
if(dogignore > 3 && !instance_exists(OBJ_WRITER )) {
    mercymod= 6666;
    global.flag[54]= 3;
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}


/*  */
