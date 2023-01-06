if(global.interact == 0) dogtimer++;
factor= 40;
if(global.interact == 0 && dogtimer == 150 * factor) {
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring..\\\\E0.\\\\TT /";
    global.msg[1]= "\\\\F1 %";
    global.msg[2]= "* Hello^1!&* This is TORIEL./";
    global.msg[3]= "\\\\E1* My errands are taking&  longer than I thought&  they would./";
    global.msg[4]= "\\\\E1* You must wait 5 more&  minutes./";
    global.msg[5]= "\\\\E0* Thank you for being&  patient./";
    global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[7]= "* Click.../%%";
    global.interact= 1;
    con= 1;
    instance_create(0, 0, obj_dialoguer );
}
if(global.interact == 0 && dogtimer == 300 * factor) {
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring..\\\\E1.\\\\TT /";
    global.msg[1]= "\\\\F1 %";
    global.msg[2]= "* Hello..^1.&* This is TORIEL./";
    global.msg[3]= "\\\\E1* I found what I was&  looking for./";
    global.msg[4]= "* But before I could&  take it.../";
    global.msg[5]= "* A small^1, white puppy&  snatched it away./";
    global.msg[6]= "\\\\E0* How odd./";
    global.msg[7]= "\\\\E1* Do dogs even LIKE&  flour?/";
    global.msg[8]= "\\\\E8* Err^1, that is an&  unrelated question^1,&  of course./";
    global.msg[9]= "\\\\E1* It will take a little&  longer^1.&* Please understand./";
    global.msg[10]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[11]= "* Click.../%%";
    global.interact= 1;
    con= 1;
    instance_create(0, 0, obj_dialoguer );
}
if(global.interact == 0 && dogtimer == 450 * factor) {
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "* (...)/";
    global.msg[2]= "* (You hear heavy panting on&  the other end of the&  phone...)/";
    global.msg[3]= "* (...)/";
    global.msg[4]= "* Bark^1!&* Bark!/";
    global.msg[5]= "* Bark..^1.&* Bark!/";
    global.msg[6]= "* (You hear a distant voice.)/";
    global.msg[7]= "\\\\TT* Stop^1, please!/";
    global.msg[8]= "* Come back here with my&  CELLPHONE!/";
    global.msg[9]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[10]= "* Click.../%%";
    global.interact= 1;
    con= 1;
    global.flag[37]= 1;
    instance_create(0, 0, obj_dialoguer );
    d= 0;
    d_noise= 1;
}
if(d_noise == 1 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 4 && d == 0) {
        d= 1;
        snd_play(snd_pombark );
    }
    if(OBJ_WRITER.stringno == 5 && d == 1) {
        d= 2;
        snd_play(snd_pombark );
    }
}
if(global.interact == 0 && dogtimer == 600 * factor) {
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "* (...)/";
    global.msg[2]= "* (Snore..^1. snore...)/";
    global.msg[3]= "* (It sounds like a small^1,&  white dog is sleeping on&  the cell phone.)/";
    global.msg[4]= "* (You hear a distant voice.)\\\\TT/";
    global.msg[5]= "* Helloooo^1?&* Little puppy...?/";
    global.msg[6]= "* Where are you...?/";
    global.msg[7]= "* I will give you a nice pat&  on the head!/";
    global.msg[8]= "\\\\T0* (The snoring stops.)/";
    global.msg[9]= "\\\\TT* ... if you return my CELLPHONE./";
    global.msg[10]= "\\\\T0* (The snoring resumes.)/";
    global.msg[11]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[12]= "* Click.../%%";
    global.interact= 1;
    con= 1;
    global.flag[37]= 1;
    instance_create(0, 0, obj_dialoguer );
}
if(global.interact == 0 && dogtimer == 750 * factor) {
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "* (...)/";
    global.msg[2]= "* (Snore..^1. snore...)/";
    global.msg[3]= "* (Achoo!)/";
    global.msg[4]= "* (It sounds like a small^1,&  white dog sneezing in its&  sleep.)/";
    global.msg[5]= "* (You hear a distant voice.)\\\\TT/";
    global.msg[6]= "* Here^1, pup-pup-puppy!/";
    global.msg[7]= "* Oh dear^1, I should not keep&  my guest waiting any longer./";
    global.msg[8]= "* ... Oh no^1, how long has it&  been since I have talked to&  them...?/";
    global.msg[9]= "* Perhaps they have been calling&  the phone^1, and...?/";
    global.msg[10]= "* ... here^1, puppy!/";
    global.msg[11]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[12]= "* Click.../%%";
    global.interact= 1;
    con= 1;
    global.flag[37]= 1;
    instance_create(0, 0, obj_dialoguer );
}
if(global.interact == 0 && dogtimer == 900 * factor) {
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "* (...)/";
    global.msg[2]= "* (Snore..^1. snore...)/";
    global.msg[3]= "* (Yawn...)/";
    global.msg[4]= "* (Blink blink.)/";
    global.msg[5]= "* (Yawn...)/";
    global.msg[6]= "* (Snore..^1. snore...)/";
    global.msg[7]= "* (You hear a tired voice.)\\\\TT/";
    global.msg[8]= "* Doggie..^1.&* Here^1, doggie.../";
    global.msg[9]= "* Oh dear.../";
    global.msg[10]= "* I do wonder how they are.../";
    global.msg[11]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[12]= "* Click.../%%";
    global.interact= 1;
    con= 1;
    global.flag[37]= 1;
    instance_create(0, 0, obj_dialoguer );
}
if(global.interact == 0 && dogtimer == 1050 * factor) {
    snd_play(snd_phone );
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "* (Snore..^1. snore...)/";
    global.msg[2]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[3]= "* Click.../%%";
    global.interact= 1;
    con= 1;
    global.flag[37]= 1;
    instance_create(0, 0, obj_dialoguer );
    dogtimer= 910 * factor;
}
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    con= 0;
    global.interact= 0;
}

/* */
/*  */
