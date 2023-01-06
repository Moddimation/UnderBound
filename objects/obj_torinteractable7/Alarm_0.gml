myinteract= 3;
global.msc= 0;
global.msg[0]= "* Do not worry about&  me./";
global.msg[1]= "* Someone has to take&  care of these flowers./%%";
global.typer= 4;
global.facechoice= 1;
global.faceemotion= 0;
if(global.flag[7] == 1) {
    global.typer= 89;
    global.facechoice= 9;
    global.msg[0]= "* Don\\'t worry about&  me./";
    global.msg[1]= "* Someone has to take&  care of these flowers./%%";
    global.faceemotion= 0;
    if(global.flag[511] == 1) {
        global.msg[0]= "* Frisk^1, please leave&  me alone./";
        global.msg[1]= "\\\\E3* I can\\'t come back^1.&* I just can\\'t^1, OK?/%%";
        global.faceemotion= 7;
    }
    if(global.flag[511] == 2) {
        global.msg[0]= "\\\\E7* I don\\'t want to break&  their hearts all over&  again./";
        global.msg[1]= "* It\\'s better if they&  never see me./%%";
        global.faceemotion= 7;
    }
    if(global.flag[511] == 3) {
        global.msg[0]= "\\\\E7* ... why are you still&  here?/";
        global.msg[1]= "* Are you trying to keep&  me company?/";
        global.msg[2]= "\\\\E0* Frisk.../";
        global.msg[3]= "* .../";
        global.msg[4]= "\\\\E7* Hey./";
        global.msg[5]= "\\\\E0* Let me ask you a&  question./";
        global.msg[6]= "* Frisk..^1.&* Why did you come&  here?/";
        global.msg[7]= "* Everyone knows the&  legend^1, right...?/";
        global.msg[8]= "* " + chr(ord("\"")) + "Travellers who climb&  Mt. Ebott are said&  to disappear." + chr(ord("\"")) + "/";
        global.msg[9]= "\\\\E7* .../";
        global.msg[10]= "* Frisk./";
        global.msg[11]= "*\\\\E0 Why would you ever&  climb a mountain&  like that?/";
        global.msg[12]= "\\\\E7* Was it foolishness?/";
        global.msg[13]= "\\\\E0* Was it fate?/";
        global.msg[14]= "\\\\E1* Or was it..^1.&* Because you...?/";
        global.msg[15]= "\\\\E7* Well./";
        global.msg[16]= "\\\\E0* Only you know the&  answer^1, don\\'t you...?/%%";
        global.faceemotion= 7;
    }
    if(global.flag[511] == 4) {
        global.msg[0]= "\\\\E2* I know why " + global.charname + "&  climbed the mountain./";
        global.msg[1]= "\\\\E7* It wasn\\'t for a&  very happy reason./";
        global.msg[2]= "\\\\E2* Frisk^1.&* I\\'ll be honest with&  you./";
        global.msg[3]= "\\\\E7 * " + global.charname + " hated humanity./";
        global.msg[4]= "\\\\E2* Why they did^1, they&  never talked about&  it./";
        global.msg[5]= "\\\\E1* But they felt very&  strongly about&  that./%%";
        global.faceemotion= 2;
    }
    if(global.flag[511] == 5) {
        global.msg[0]= "\\\\E2* Frisk..^1.&* You really ARE different&  from " + global.charname + "./";
        global.msg[1]= "\\\\E0* In fact^1, though you&  have similar^1, uh^1,&  fashion choices.../";
        global.msg[2]= "* I don\\'t know why I&  ever acted like you&  were the same person./";
        global.msg[3]= "\\\\E7* Maybe..^1.&* The truth is.../";
        global.msg[4]= "\\\\E1* " + global.charname + " wasn\\'t really&  the greatest person./";
        global.msg[5]= "\\\\E7* While^1, Frisk.../";
        global.msg[6]= "\\\\E0* You\\'re the type of&  friend I wish I&  always had./";
        global.msg[7]= "\\\\E7* So maybe I was kind&  of projecting a&  little bit./";
        global.msg[8]= "\\\\E0* Let\\'s be honest^1.&* I did some weird&  stuff as a flower./%%";
        global.faceemotion= 2;
    }
    if(global.flag[511] == 6) {
        global.msg[0]= "\\\\E2* There\\'s one last&  thing I feel like&  I should tell you./";
        global.msg[1]= "* Frisk^1, when " + global.charname + "&  and I combined our&  SOULs together.../";
        global.msg[2]= "* The control over our&  body was actually split&  between us./";
        global.msg[3]= "* They were the one&  that picked up their&  own empty body./";
        global.msg[4]= "* And then^1, when we&  got to the village.../";
        global.msg[5]= "\\\\E2* They were the one&  that wanted to.../";
        global.msg[6]= "\\\\E1* ... to use our full&  power./";
        global.msg[7]= "\\\\E2* I was the one that&  resisted./";
        global.msg[8]= "\\\\E7* And then^1, because of&  me^1, we.../";
        global.msg[9]= "\\\\E1* Well^1, that\\'s why I&  ended up a flower./";
        global.msg[10]= "\\\\E2* Frisk.../";
        global.msg[11]= "* This whole time^1, I\\'ve&  blamed myself for&  that decision./";
        global.msg[12]= "* That\\'s why I adopted&  that horrible view&  of the world./";
        global.msg[13]= "* " + chr(ord("\"")) + "Kill or be killed." + chr(ord("\"")) + "/";
        global.msg[14]= "\\\\E7* But now..^1.&* After meeting you.../";
        global.msg[15]= "\\\\E0* Frisk^1, I don\\'t regret&  that decision anymore./";
        global.msg[16]= "\\\\E4* I did the right&  thing./";
        global.msg[17]= "* If I killed those&  humans.../";
        global.msg[18]= "* We would have had to&  wage war against all&  of humanity./";
        global.msg[19]= "\\\\E0* And in the end^1,&  everyone went free^1,&  right?/";
        global.msg[20]= "\\\\E7* I still feel kind&  of sad knowing how&  long it took.../";
        global.msg[21]= "\\\\E0* ... so maybe it&  wasn\\'t a perfect&  decision./";
        global.msg[22]= "* But you can\\'t regret&  hard choices your&  whole life^1, right?/";
        global.msg[23]= "\\\\E7* Well^1, not that I&  have much of a life&  left./";
        global.msg[24]= "\\\\E0* But that\\'s besides&  the point./%%";
        global.faceemotion= 2;
    }
    if(global.flag[511] == 7) {
        global.msg[0]= "* Frisk^1, thank you&  for listening to me./";
        global.msg[1]= "* You should really go&  be with your friends&  now^1, OK?/";
        global.msg[2]= "* Oh^1, and^1, please.../";
        global.msg[3]= "\\\\E7* In the future^1, if you&  uh^1, see me.../";
        global.msg[4]= "* Don\\'t think of it as&  me^1, OK?/";
        global.msg[5]= "\\\\E0* I just want you to&  remember me like this./";
        global.msg[6]= "\\\\E0* Someone that was your&  friend for a little&  while./";
        global.msg[7]= "\\\\E2* Oh^1, and Frisk.../";
        global.msg[8]= "\\\\E0* Be careful in the&  outside world^1, OK?/";
        global.msg[9]= "* Despite what everyone&  thinks^1, it\\'s not as&  nice as it is here./";
        global.msg[10]= "\\\\E7* There are a lot of&  Floweys out there./";
        global.msg[11]= "\\\\E2* And not everything can&  be resolved by just&  being nice./";
        global.msg[12]= "\\\\E0* Frisk.../";
        global.msg[13]= "* Don\\'t kill^1, and&  don\\'t be killed^1,&  alright?/";
        global.msg[14]= "* That\\'s the best you&  can strive for./";
        global.msg[15]= "* Well^1, see you./%%";
        global.faceemotion= 0;
    }
    if(global.flag[511] >= 8) {
        global.msg[0]= "\\\\E7* Frisk.../";
        global.msg[1]= "\\\\E6* Don\\'t you have&  anything better to&  do?/%%";
        global.faceemotion= 0;
    }
    global.flag[511]++;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
