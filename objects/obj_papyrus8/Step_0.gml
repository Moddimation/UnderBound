if(conversation == 1) {
    papyrus= instance_create(obj_mainchara.x + 200, 110, obj_papyrus_actor );
    papyrus.sprite_index= spr_papyrus_lt ;
    obj_mainchara.y= 120;
    fade= instance_create(0, 0, obj_musfadeout );
    fade.fadespeed= 0.01;
    myinteract= 3;
    global.msc= 0;
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.interact= 1;
    papyrus.sprite_index= papyrus.ltsprite;
    obj_mainchara.cutscene= 1;
    camera= __view_get( e__VW.XView, 0 );
    conversation= 2;
    global.border= 0;
    if(global.hp < global.maxhp) global.hp= global.maxhp;
}
if(conversation == 2) {
    if(__view_get( e__VW.XView, 0 ) < camera + 100)
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (3) );
    else  conversation= 3;
}
if(conversation == 3) {
    chara= instance_create(obj_mainchara.x, 120, obj_mainchara_actor );
    chara.sprite_index= spr_maincharar_shadow ;
    papyrus.d= 1;
    papyrus.fun= 1;
    papyrus.sprite_index= spr_papyrus_shadowl ;
    chara.image_alpha= 0;
    chara.d= 1;
    chara.fun= 1;
    papyrus.image_alpha= 0;
    chara.depth= 900;
    papyrus.depth= 900;
    conversation= 4;
}
if(conversation == 4) {
    if(chara.image_alpha < 0.9)
        chara.image_alpha+= 0.01;
    else  conversation= 5;
}
if(conversation == 5) {
    if(papyrus.image_alpha < 0.9)
        papyrus.image_alpha+= 0.01;
    else  conversation= 6;
}
if(conversation == 6) {
    alarm[4]= 40;
    conversation= 7;
}
if(conversation == 8) {
    obj_mainchara.y= chara.y;
    ini_open("undertale.ini");
    PP= ini_read_real("Papyrus", "PS", 0);
    ini_close();
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.interact= 1;
    global.msg[0]= "HUMAN./";
    global.msg[1]= "ALLOW ME TO TELL&YOU ABOUT SOME&COMPLEX FEELINGS./";
    if(PP > 0) {
        global.msg[2]= "SOMEHOW^1, I FEEL LIKE&YOU\\'RE AN OLD FRIEND.../";
        global.msg[3]= "EVEN THOUGH I\\'VE&NEVER ACTUALLY MET&YOU BEFORE!!/";
        global.msg[4]= "I CAN\\'T EXPLAIN&WHY I FEEL THIS&WAY.../";
        global.msg[5]= "DID I MEET YOU&ONLINE???/";
        global.msg[6]= "I HAVE MANY " + chr(ord("\"")) + "SOCIAL&MEDIA CONNECTIONS." + chr(ord("\"")) + "/";
        global.msg[7]= "IT\\'S HARD TO KEEP&TRACK OF THEM&ALL./";
        global.msg[8]= "JUST A DOZEN MORE^1,&AND.../";
        global.msg[9]= "I\\'LL FINALLY REACH&DOUBLE DIGITS!!!/";
        global.msg[10]= "... HEY^1, WAIT A&SECOND!/";
        global.msg[11]= "YOU CAN\\'T BE MY&FRIEND!!^1!&YOU\\'RE HUMAN!/";
        global.msg[12]= "I CAN\\'T BELIEVE YOU&ALMOST TRICKED ME INTO&NOT DEFEATING YOU!!!/";
        global.msg[13]= "WHOOPSIE DOOPSIE!/%%";
    }
    global.msg[2]= "FEELINGS LIKE.../";
    global.msg[3]= "THE JOY OF FINDING&ANOTHER PASTA&LOVER./";
    global.msg[4]= "THE ADMIRATION FOR&ANOTHER\\'S PUZZLE-&SOLVING SKILLS./";
    global.msg[5]= "THE DESIRE TO HAVE&A COOL^1, SMART PERSON&THINK YOU ARE COOL./";
    global.msg[6]= "THESE FEELINGS.../";
    global.msg[7]= "THEY MUST BE WHAT&YOU ARE FEELING&RIGHT NOW!!!/";
    global.msg[8]= "I CAN HARDLY IMAGINE&WHAT IT MUST BE LIKE&TO FEEL THAT WAY./";
    global.msg[9]= "AFTER ALL^1, I AM&VERY GREAT./";
    global.msg[10]= "I DON\\'T EVER WONDER&WHAT HAVING LOTS&OF FRIENDS IS LIKE./";
    global.msg[11]= "I PITY YOU..^1.&LONELY HUMAN.../";
    global.msg[12]= "WORRY NOT!!^1!&YOU SHALL BE&LONELY NO LONGER!/";
    global.msg[13]= "I^1, THE GREAT&PAPYRUS^1, WILL BE&YOUR.../";
    global.msg[14]= " ^2.^2../";
    global.msg[15]= "NO.../";
    global.msg[16]= "NO^1, THIS IS ALL&WRONG!/";
    global.msg[17]= "I CAN\\'T BE YOUR&FRIEND!!!/";
    global.msg[18]= "YOU ARE A HUMAN!/";
    global.msg[19]= "I MUST CAPTURE&YOU!!!/";
    global.msg[20]= "THEN^1, I CAN FULFILL&MY LIFELONG DREAM!!!/";
    global.msg[21]= "POWERFUL^1!&POPULAR^1!&PRESTIGIOUS!!!/";
    global.msg[22]= "THAT\\'S PAPYRUS!!!/";
    global.msg[23]= "THE NEWEST MEMBER.../";
    global.msg[24]= "OF THE ROYAL GUARD!/%%";
    if(global.flag[67] == -1) {
        global.msg[0]= "OH..^1.&WHERE COULD THAT&HUMAN HAVE GONE./";
        global.msg[1]= "... WAIT..^1.&IT\\'S RIGHT IN&FRONT OF ME!!!/";
        global.msg[2]= "HELLO^1!&I WAS WORRIED THAT&YOU HAD GOTTEN LOST!/";
        global.msg[3]= "IT SURE IS A RELIEF&TO KNOW THAT&YOU\\'RE RIGHT HERE.../";
        global.msg[4]= "... WAIT A SECOND!!!/";
        global.msg[5]= "YOU\\'RE NOT SUPPOSED&TO ESCAPE!!!/";
        global.msg[6]= "GET BACK THERE!!!/%%";
        if(PP > 0) {
            global.msg[0]= "I SUPPOSE THIS PROVES&WHAT I SAID./";
            global.msg[1]= "WE REALLY ARE BOUND&TOGETHER./";
            global.msg[2]= "TWO BONES IN THE&SKELETAL ANATOMY OF&FATE!!!/";
            global.msg[3]= "THAT\\'S HOW YOU APPEAR&HERE NOW.../";
            global.msg[4]= "EVEN THOUGH IT\\'S VERY&IMPOSSIBLE FOR YOU&TO ESCAPE./";
            global.msg[5]= "AMAZING!!!/";
            global.msg[6]= "I FEEL A SINCERE.../";
            global.msg[7]= "WAAAAAIT A SECOND!!/";
            global.msg[8]= "I STILL HAVE TO&CAPTURE YOU!!!/";
            global.msg[9]= "WHOOPSIE-DOOPSIE!!/%%";
        }
    }
    if(global.flag[67] == -2) {
        global.msg[0]= "BACK AGAIN^1, EH?/";
        global.msg[1]= "I SUPPOSE IT\\'S MY&FAULT.../";
        global.msg[2]= "I TOLD YOU BEFORE&THAT I WOULD MAKE&YOU SPAGHETTI./";
        global.msg[3]= "IT\\'S ONLY NATURAL&THAT YOU WOULD&WANT TO SEE ME.../";
        global.msg[4]= "IN THE DIRE HOPE&THAT I WOULD MAKE&YOU SOME./";
        global.msg[5]= "WELL..^1. I UNDERSTAND./";
        global.msg[6]= "PAPYRUS IS HUNGRY^1,&TOO!/";
        global.msg[7]= "HUNGRY FOR JUSTICE!/%%";
    }
    if(global.flag[67] == -3) {
        global.msc= 544;
        conversation= 13.5;
    }
    if(murder == 1) global.msg[0]= "HALT^1, HUMAN!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 14;
    if(murder == 1) conversation= 90;
}
if(conversation == 14 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno > 14 && OBJ_WRITER.stringno < 18)
        papyrus.sprite_index= spr_papyrus_shadowr ;
    else  papyrus.sprite_index= spr_papyrus_shadowl ;
}
if(conversation == 14 && !instance_exists(OBJ_WRITER )) {
    alarm[4]= 40;
    conversation= 15;
    caster_free(-3);
    snd_play(snd_break2 );
}
if(conversation == 15) global.interact= 1;
if(conversation == 16 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.x= chara.x;
    global.interact= 1;
    myinteract= 3;
    global.seriousbattle= 0;
    global.battlegroup= 27;
    global.flag[200]= 0;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    conversation= 17;
    obj_fogmaker.s= 1;
}
if(global.flag[68] == 1 && conversation == 17 && !instance_exists(OBJ_WRITER )) {
    room_persistent= 0;
    global.mercy= 0;
    global.interact= 1;
    chara.x= chara.xstart;
    obj_mainchara.x= chara.x;
    alarm[4]= 15;
    if(global.flag[67] < 0) {
        instance_create(0, 0, obj_persistentfader );
        global.interact= 0;
        room_goto(75);
        exit;
    } else  {
        if(global.flag[67] == 1) papyrus.image_alpha= 0;
        conversation= 17.5;
        global.currentsong= caster_load("music/papyrus.ogg");
    }
}
if(conversation == 17.5) global.interact= 1;
if(conversation == 18.5) {
    global.interact= 1;
    if(chara.image_alpha > 0.03) {
        chara.image_alpha-= 0.03;
        papyrus.image_alpha-= 0.03;
    } else  {
        conversation= 19;
        if(global.flag[67] != 1) {
            papyrus.sprite_index= papyrus.rtsprite;
            papyrus.depth= 1100;
            papyrus.image_alpha= 1;
        }
        with(chara) instance_destroy();
    }
}
if(conversation == 19) {
    global.interact= 1;
    if(obj_fogmaker.fog_alpha > 0.02)
        obj_fogmaker.fog_alpha-= 0.02;
    else  {
        obj_fogmaker.fog_alpha= 0;
        conversation= 20;
    }
}
if(conversation == 20) {
    if(murder == 0) global.flag[27]= 1;
    if(global.flag[67] == 1) conversation= 25;
    else  {
        conversation= 21;
        alarm[4]= 30;
    }
}
if(conversation == 22) {
    ini_open("undertale.ini");
    PS= ini_read_real("Papyrus", "PS", 0);
    ini_write_real("Papyrus", "PS", PS + 1);
    ini_close();
    global.msc= 540;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 3;
    global.interact= 1;
    global.msg[0]= "I WAS NEVER ONE&  TO BEPIS./%%";
    papyrus.fun= 0;
    papyrus.npcdir= 0;
    papyrus.sprite_index= papyrus.rtsprite;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 22.5;
    if(murder == 1) conversation= 22.4;
}
if(conversation == 22.4) {
    papyrus.sprite_index= papyrus.ltsprite;
    caster_loop(global.currentsong, 0.5, 1);
    conversation= 21.6;
    alarm[4]= 10;
}
if(conversation == 22.5 && global.msc == 541) {
    papyrus.sprite_index= papyrus.ltsprite;
    caster_loop(global.currentsong, 0.5, 1);
    conversation= 21.6;
    alarm[4]= 10;
}
if(conversation == 22.6 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.msg[0]= "\\\\E1OH^1, I ALMOST&FORGOT TO TELL&YOU.../";
    global.msg[1]= "TO REACH THE EXIT^1,&YOU WILL HAVE&TO PASS.../";
    global.msg[2]= "\\\\WTHROUGH \\\\YTHE KING\\\\W\\'S&CASTLE./";
    if(murder == 1) {
        global.msg[1]= "TO REACH THE EXIT^1,&YOU WILL HAVE&TO MEET.../";
        global.msg[2]= "THE KING./";
    }
    global.msg[3]= "\\\\YTHE KING OF&ALL MONSTERS.../";
    global.msg[4]= "HE IS.../";
    global.msg[5]= "... WELL.../%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    volly= caster_get_volume(global.currentsong);
    conversation= 22.7;
}
if(conversation == 22.7) {
    if(volly > 0.06) volly-= 0.02;
    else  {
        volly= 0;
        conversation= 22.8;
        caster_pause(global.currentsong);
    }
    caster_set_volume(global.currentsong, volly);
}
if(conversation == 22.8 && !instance_exists(OBJ_WRITER )) {
    caster_resume(global.currentsong);
    caster_set_volume(global.currentsong, 0.5);
    global.msg[0]= "\\\\E0HE\\'S A BIG FUZZY&PUSHOVER!!!/";
    global.msg[1]= "EVERYBODY LOVES&THAT GUY./";
    global.msg[2]= "I AM CERTAIN IF&YOU JUST SAY.../";
    global.msg[3]= "" + chr(ord("\"")) + "EXCUSE ME^1, MR.&DREEMURR..^1. CAN I&PLEASE GO HOME?" + chr(ord("\"")) + "/";
    global.msg[4]= "HE\\'LL GUIDE YOU&RIGHT TO THE&BARRIER HIMSELF!/";
    global.msg[5]= "ANYWAY!!^1!&THAT\\'S ENOUGH&TALKING!!!/";
    global.msg[6]= "I\\'LL BE AT HOME&BEING A COOL&FRIEND!!!/";
    global.msg[7]= "FEEL FREE TO&COME BY AND&HANG OUT!!!/";
    if(global.flag[66] == 1)
        global.msg[7]= "FEEL FREE TO&COME BY AND HAVE&THAT DATE!/";
    global.msg[8]= "NYEH HEH HEH HEH&HEH HEH HEH!!!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    global.flag[88]= 1;
    conversation= 23;
}
if(conversation == 23 && !instance_exists(OBJ_WRITER )) {
    papyrus.sprite_index= papyrus.lsprite;
    papyrus.image_speed= 0.5;
    papyrus.fun= 1;
    papyrus.npcdir= 0;
    papyrus.hspeed= -3.5;
    with(papyrus) event_user(2);
    conversation= 24;
    alarm[4]= 90;
}
if(conversation == 25) {
    if(!instance_exists(obj_musfadeout )) {
        mmm= instance_create(0, 0, obj_musfadeout );
        mmm.fadespeed= 0.02;
    }
    if(__view_get( e__VW.XView, 0 ) > camera)
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (3) );
    else  {
        obj_mainchara.cutscene= 0;
        conversation= 27;
    }
}
if(conversation == 27) {
    global.plot= 101;
    global.interact= 0;
    instance_destroy();
}
if(conversation == 90 && !instance_exists(OBJ_WRITER )) {
    global.currentsong= caster_load("music/papyrusboss.ogg");
    caster_loop(global.currentsong, 0.8, 0.2);
    rem_dx= obj_mainchara.x;
    conversation= 91;
    alarm[4]= 15;
    chara.hspeed= 2;
    chara.image_speed= 0.25;
}
if(conversation == 92) {
    chara.hspeed= 0;
    chara.image_speed= 0;
    chara.image_index= 0;
    chara.image_index= 0;
    conversation= 93;
    alarm[4]= 30;
}
if(conversation == 94) {
    global.msg[0]= "HEY^1, QUIT MOVING&WHILE I\\'M TALKING&TO YOU!/";
    global.msg[1]= "I^1, THE GREAT PAPYRUS^1,&HAVE SOME THINGS&TO SAY./";
    global.msg[2]= "FIRST^1: YOU\\'RE A&FREAKING WEIRDO!/";
    global.msg[3]= "NOT ONLY DO YOU&NOT LIKE PUZZLES./";
    global.msg[4]= "BUT THE WAY YOU&SHAMBLE ABOUT FROM&PLACE TO PLACE.../";
    global.msg[5]= "THE WAY YOUR HANDS&ARE ALWAYS COVERED&IN DUSTY POWDER./";
    global.msg[6]= "IT FEELS.../";
    global.msg[7]= "LIKE YOUR LIFE IS&GOING DOWN A&DANGEROUS PATH./";
    global.msg[8]= "HOWEVER!/";
    global.msg[9]= "I^1, PAPYRUS^1, SEE&GREAT POTENTIAL&WITHIN YOU!/";
    global.msg[10]= "EVERYONE CAN BE&A GREAT PERSON&IF THEY TRY!/";
    global.msg[11]= "AND ME^1, I HARDLY&HAVE TO TRY AT&ALL!!!/";
    global.msg[12]= "NYEH HEH HEH&HEH HEH HEH!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 95;
}
if(conversation == 95 && !instance_exists(OBJ_WRITER )) {
    conversation= 96;
    alarm[4]= 15;
    chara.hspeed= 2;
    chara.image_speed= 0.25;
}
if(conversation == 97) {
    chara.hspeed= 0;
    chara.image_index= 0;
    chara.image_speed= 0;
    conversation= 98;
    alarm[4]= 30;
}
if(conversation == 99) {
    global.msg[0]= "HEY^1, QUIT MOVING!/";
    global.msg[1]= "THIS IS EXACTLY&WHAT I AM TALKING&ABOUT!/";
    global.msg[2]= "HUMAN^1! I THINK&YOU ARE IN NEED&OF GUIDANCE!/";
    global.msg[3]= "SOMEONE NEEDS TO&KEEP YOU ON THE&STRAIGHT AND NARROW!/";
    global.msg[4]= "BUT WORRY NOT!&I^1, PAPYRUS.../";
    global.msg[5]= "WILL GLADLY BE&YOUR FRIEND AND&TUTOR!/";
    global.msg[6]= "I WILL TURN YOUR&LIFE RIGHT&AROUND!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 100;
}
if(conversation == 100 && !instance_exists(OBJ_WRITER )) {
    conversation= 101;
    alarm[4]= 30;
    chara.hspeed= 2;
    chara.image_speed= 0.25;
}
if(conversation == 102) {
    chara.image_index= 0;
    chara.hspeed= 0;
    chara.image_index= 0;
    chara.image_speed= 0;
    conversation= 103;
    alarm[4]= 30;
}
if(conversation == 104) {
    global.msg[0]= "I SEE YOU ARE&APPROACHING./";
    global.msg[1]= "ARE YOU OFFERING A&HUG OF ACCEPTANCE?/";
    global.msg[2]= "WOWIE!^1! MY LESSONS&ARE ALREADY&WORKING!!/";
    global.msg[3]= "I^1, PAPYRUS^1,&WELCOME YOU&WITH OPEN ARMS!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 14;
}

/* */
/*  */
