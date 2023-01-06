myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Error!/%%";
if(room == 83) {
    if(instance_exists(obj_npc_room )) {
        if(obj_npc_room.talkedto == 0) {
            global.msg[0]= "* All that gives my life&  validation is explaining&  the Echo Flower.../";
            global.msg[1]= "* No one can know.../%%";
            v= 1;
        }
        if(obj_npc_room.talkedto == 1 && v == 0)
            global.msg[0]= "* This is an Echo Flower^1.&* It repeats the last thing&  it heard^1, over and over.../%%";
        if(obj_npc_room.talkedto > 1 && v == 0)
            global.msg[0]= "* Neat^1, huh?/%%";
        if(obj_npc_room.talkedto > 0 && v == 1)
            global.msg[0]= "* Never trust a flower..^1.&* That\\'s one of the constants&  of this world./%%";
    } else  global.msg[0]= "* (It\\'s strangely silent.)/%%";
}
if(room == 84) {
    if(x < room_width / 2)
        global.msg[0]= "* Sitting behind rushing water..^1.&* It makes me feel relaxed./%%";
    if(x > room_width / 2)
        global.msg[0]= "* I swore I saw something..^1.&* Behind that rushing water.../%%";
}
if(room == 89)
    global.msg[0]= "* I just wasn\\'t ready for&  the responsibility./%%";
if(room == 90) {
    if(x > 40) {
        global.msg[0]= "* A long time ago^1, monsters would&  whisper their wishes to the&  stars in the sky./";
        global.msg[1]= "* If you hoped with all your&  heart^1, your wish would come&  true./";
        global.msg[2]= "* Now^1, all we have are these&  sparkling stones on the&  ceiling.../%%";
        if(scr_murderlv() >= 8) global.msg[0]= "* (It\\'s strangely silent.)/%%";
    }
    if(x > 180) {
        global.msg[0]= "* Thousands of people wishing&  together can\\'t be wrong!/";
        global.msg[1]= "* The king will prove that./%%";
        if(scr_murderlv() >= 8) global.msg[0]= "* (It\\'s strangely silent.)/%%";
    }
    if(x > 280) global.msg[0]= "* C\\'mon^1, sis^1!&* Make a wish!/%%";
    if(x > 380)
        global.msg[0]= "* I wish my sister and I will&  see the real stars someday.../%%";
    if(x > 620)
        global.msg[0]= "* Ah..^1. seems my horoscope is&  the same as last week\\'s.../%%";
    if(scr_murderlv() >= 8 || global.flag[350] == 1)
        global.msg[0]= "* (It\\'s strangely silent.)/%%";
}
if(room == 91 && x < room_width / 2)
    global.msg[0]= "* Sitting behind rushing water..^1.&* It makes me feel relaxed./%%";
if(room == 94) {
    global.msg[0]= "* Squeak./%%";
    if(scr_murderlv() >= 8) global.msg[0]= "* (It\\'s strangely silent.)/%%";
}
if(room == 97) {
    global.msg[0]= "* (You hear a passing&  conversation.)/";
    global.msg[1]= "* Don\\'t say that^1!&* Come on^1, I promise I&  won\\'t laugh./%%";
    if(x < 700 && y < 360) {
        global.msg[0]= "* (You hear a passing&  conversation.)/";
        global.msg[1]= "* So^1? Don\\'t you have any&  wishes to make?/%%";
    }
    if(x < 700 && y > 360) {
        global.msg[0]= "* (You hear a passing&  conversation.)/";
        global.msg[1]= "* ... hmmm^1, just one^1, but.../";
        global.msg[2]= "* It\\'s kind of stupid./%%";
    }
    if(scr_murderlv() >= 8 || global.flag[350] == 1)
        global.msg[0]= "* (It\\'s strangely silent.)/%%";
}
if(room == 98)
    global.msg[0]= "* I can\\'t run any longer..^1.&* Somebody^1, anybody.../%%";
if(room == 131) {
    global.msg[0]= "* Someday^1, I\\'d like to climb&  this mountain we\\'re all&  buried under./%%";
    if(y == 160) {
        global.msg[0]= "* (You hear a passing&  conversation.)/";
        global.msg[1]= "* Sorry^1, it\\'s just funny.../";
        global.msg[2]= "* That\\'s my wish^1, too./%%";
    }
    if(y == 240) {
        global.msg[0]= "* (You hear laughter.)/";
        global.msg[1]= "* ... hey^1, you said you wouldn\\'t&  laugh at it!/%%";
    }
    if(y == 320) {
        global.msg[0]= "* (You hear a passing&  conversation.)/";
        global.msg[1]= "* Someday^1, I\\'d like to climb&  this mountain we\\'re all&  buried under./";
        global.msg[2]= "* Standing under the sky^1, looking&  at the world all around..^1.&* That\\'s my wish./%%";
    }
    if(y == 420) {
        global.msg[0]= "* (You hear a passing&  conversation.)/";
        global.msg[1]= "* Of course I won\\'t laugh!/%%";
    }
    if(y > 450) {
        global.msg[0]= "* (You hear a passing&  conversation.)/";
        global.msg[1]= "* ... hmmm..^1. if I say my wish..^1.&* You promise you won\\'t&  laugh at me?/%%";
    }
    if(xxx == 1 && y == 420) {
        global.typer= 4;
        global.msg[0]= "* Where oh where could that&  child be...?/";
        global.msg[1]= "* I\\'ve been looking all over&  for them.../";
        global.msg[2]= "\\\\TS* .../";
        global.msg[3]= "\\\\TF* Hee hee hee./";
        global.msg[4]= "* THAT\\'S not true./";
        global.msg[5]= "* She\\'ll find another kid^1, and&  instantly forget about you./";
        global.msg[6]= "* You\\'ll NEVER see her again./%%";
        if(global.flag[45] == 4) {
            global.typer= 4;
            global.msg[0]= "* Where am I...?/";
            global.msg[1]= "* It\\'s so cold here..^1.&* And so dark.../";
            global.msg[2]= "* Someone help me..^1.&* Anyone..^1. please..^1.&* Help me.../";
            global.msg[3]= "\\\\TF* .../";
            global.msg[4]= "* But nobody came./%%";
        }
    }
    if(scr_murderlv() >= 8 || global.flag[350] == 1)
        global.msg[0]= "* (It\\'s strangely silent.)/%%";
}
if(room == 9999) {
    no= 0;
    i= 1;
    while(i < 6) {
        if(id == instance_find(object_index, i)) no= i;
        i++;
    }
    if(y > 400) no= 0;
    if(no == 0)
        global.msg[0]= "* I\\'m gonna run around in a&  huge field of flowers./%%";
    if(no == 0 && xxx == 1) {
        global.typer= 4;
        global.msg[0]= "* Where oh where could that&  child be...?/";
        global.msg[1]= "* I\\'ve been looking all over&  for them.../";
        global.msg[2]= "\\\\TS* .../";
        global.msg[3]= "\\\\TF* Hee hee hee./";
        global.msg[4]= "* THAT\\'S not true./";
        global.msg[5]= "* She\\'ll find another kid^1, and&  instantly forget about you./";
        global.msg[6]= "* You\\'ll NEVER see her again./%%";
        if(global.flag[45] == 4) {
            global.typer= 4;
            global.msg[0]= "* Where am I...?/";
            global.msg[1]= "* It\\'s so cold here..^1.&* And so dark.../";
            global.msg[2]= "* Someone help me..^1.&* Anyone..^1. please..^1.&* Help me.../";
            global.msg[3]= "\\\\TF* .../";
            global.msg[4]= "* But nobody came./%%";
        }
    }
    if(no == 4)
        global.msg[0]= "* Maybe I could jump without&  hitting my head./%%";
    if(no == 3) global.msg[0]= "* ... I wanna..^1.&* I wanna.../%%";
    if(no == 2)
        global.msg[0]= "* You wanna ride a train^1, right^1,&  honey?/%%";
    if(no == 1)
        global.msg[0]= "* I\\'ll climb this mountain&  and.../%%";
    if(x > 162) {
        no= 5;
        global.typer= 5;
    }
    if(no == 5)
        global.msg[0]= "* I just want everyone to be&  happy.../%%";
    if(scr_murderlv() >= 8) global.msg[0]= "* (It\\'s strangely silent.)/%%";
}
if(room == 172)
    global.msg[0]= "* (You stop to smell the&  flowers.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
