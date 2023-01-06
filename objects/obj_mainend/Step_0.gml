if(con == 0) {
    con= 1;
    snd_play(snd_phone );
}
if(con == 1) {
    global.faceemotion= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.msc= 0;
    global.msg[0]= "* (Ring^1, ring...)/";
    scr_sansface(1, 0);
    global.msg[2]= "* heya./";
    global.msg[3]= "\\\\E1* is anyone there...?/";
    global.msg[4]= "\\\\E2* well^1, i\\'ll just leave&  a message.../%%";
    scr_itemcheck(16);
    if(haveit == 1 && global.flag[67] != 1) {
        global.msg[3]= "\\\\E1* is anyone there...?/";
        global.msg[4]= "\\\\E2* well..^1. just calling&  to say./";
        global.msg[5]= "\\\\E1* you made a snowman&  really happy./";
        global.msg[6]= "\\\\E2* ... guess i should&  say something else^1,&  too./%%";
    }
    if(!file_exists("file0") && global.flag[67] != 1) {
        global.msg[2]= "* heya./";
        global.msg[4]= "\\\\E2* well..^1. just calling&  to say./";
        global.msg[5]= "\\\\E1* it\\'s been a while^1.&* shouldn\\'t you SAVE?/";
        global.msg[6]= "\\\\E2* ... guess i should&  say something else^1,&  too./%%";
    }
    if(global.armor == 4 && global.flag[67] != 1) {
        global.msg[3]= "\\\\E1* is anyone there...?/";
        global.msg[4]= "\\\\E2* well..^1. just calling&  to ask./";
        global.msg[5]= "\\\\E1* did you ever take&  off that gross&  bandage...?/";
        global.msg[6]= "\\\\E2* ... guess i should&  say something else^1,&  too./%%";
    }
    if(global.flag[260] == 0 && global.flag[67] != 1) {
        global.msg[3]= "\\\\E1* is anyone there...?/";
        global.msg[4]= "\\\\E2* well..^1. just calling&  to ask./";
        global.msg[5]= "\\\\E1* did you ever get&  something to eat?/";
        global.msg[6]= "\\\\E2* ... guess i should&  say something else^1,&  too./%%";
    }
    if(global.flag[260] == 0 && global.lv == 1 && global.armor == 4 && global.flag[67] != 1) {
        global.msg[3]= "\\\\E1* is anyone there...?/";
        global.msg[4]= "\\\\E2* well..^1. just calling&  to ask./";
        global.msg[5]= "\\\\E1* you really like to&  challenge yourself^1,&  huh...?/";
        global.msg[6]= "\\\\E2* well..^1. good job^1./";
        global.msg[7]= "\\\\E1* just promise not to&  brag about it^1,&  okay?/";
        global.msg[8]= "\\\\E2* ... guess i should&  say something else^1,&  too./%%";
    }
    if(q == 7) {
        global.msg[2]= "* .../";
        global.msg[3]= "* alright^1, i\\'ve got the&  number./%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    if(q != 3 && q != 7) caster_loop(global.currentsong, 1, 1);
    alarm[4]= 60;
    if(q == 0) con= 3;
    if(q == 1) con= 20;
    if(q == 2) con= 30;
    if(q == 3) con= 40;
    if(q == 4) con= 50;
    if(q == 5) con= 60;
    if(q == 6) con= 70;
    if(q == 7) con= 90;
    if(q == 20) con= 80;
}
if(con == 4) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.msg[0]= "* so..^1.&* it\\'s been a while./";
    global.msg[1]= "\\\\E0* the queen returned^1, and&  is now ruling over&  the underground./";
    global.msg[2]= "* she\\'s enstated a new&  policy.../";
    global.msg[3]= "\\\\E3* all the humans who fall&  here will be treated&  not as enemies.../";
    global.msg[4]= "\\\\E0* but as friends./";
    global.msg[5]= "\\\\E1* it\\'s probably for the&  best^1, anyway./";
    global.msg[6]= "\\\\E0* the human souls the king&  gathered.../";
    global.msg[7]= "\\\\E3* seem to have&  disappeared./";
    global.msg[8]= "\\\\E1* so^1, uh^1, that plan&  ain\\'t happening any&  time soon./";
    global.msg[9]= "* but even though people&  are heartbroken over&  the king.../";
    global.msg[10]= "\\\\E1* ... and things are&  looking grim for our&  freedom.../";
    global.msg[11]= "\\\\E0* the queen\\'s trying her&  best not to let us&  give up hope./";
    global.msg[12]= "\\\\E1* so^1, uh^1, hey.../";
    global.msg[13]= "\\\\E1* if we\\'re not giving&  up down here.../";
    global.msg[14]= "\\\\E2* don\\'t give up wherever&  you are^1, ok?/";
    global.msg[15]= "\\\\E3* who knows how long&  it will take.../";
    global.msg[16]= "\\\\E0* but we will get out&  of here./";
    global.msg[17]= "\\\\E2* that\\'s a promise./";
    scr_papface(17, 1);
    global.msg[18]= "SANS!!!&WHO ARE YOU&TALKING TO???/";
    scr_sansface(19, 2);
    global.msg[20]= "* oh^1, nobody./";
    scr_papface(21, 1);
    global.msg[22]= "WHAT!^1?&NOBODY!?/";
    global.msg[23]= "\\\\E0CAN I TALK TO&THEM TOO???/";
    scr_sansface(24, 1);
    global.msg[25]= "* here^1, knock yourself&  out./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 5;
}
if(con == 5 && !instance_exists(OBJ_WRITER )) {
    con= 6;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 3;
    global.msg[0]= "WAIT A SECOND.../";
    global.msg[1]= "\\\\E1I RECOGNIZE THIS&NUMBER!!!/";
    global.msg[2]= "\\\\E0ATTENTION^1, HUMAN!/";
    global.msg[3]= "\\\\E2I^1, THE GREAT&PAPYRUS.../";
    global.msg[4]= "\\\\E0AM NOW CAPTAIN OF&THE ROYAL GUARD!/";
    global.msg[5]= "\\\\E2IT\\'S EVERYTHING I\\'VE&EVER DREAMED OF.../";
    global.msg[6]= "\\\\E3EXCEPT^1, INSTEAD&OF FIGHTING^1, WE&JUST WATER FLOWERS./";
    global.msg[7]= "\\\\E0SO THAT\\'S EVER-&SO-SLIGHTLY&DIFFERENT./";
    global.msg[8]= "\\\\E0AND^1, WE\\'RE HELPING&DR. ALPHYS&WITH HER RESEARCH!/";
    global.msg[9]= "\\\\E0SHE\\'S GONNA FIND A&WAY TO GET US OUT&OF HERE./";
    global.msg[10]= "UNDYNE IS HELPING&HER TOO!/";
    global.msg[11]= "\\\\E3THOUGH^1, TO BE&HONEST^1, HER METHOD&OF HELPING.../";
    global.msg[12]= "\\\\E2SEEMS KIND OF.../";
    global.msg[13]= "\\\\E3EXPLOSION-INDUCING./";
    global.msg[14]= "\\\\E0BUT I THINK ALPHYS&LIKES HAVING HER&AROUND./";
    global.msg[15]= "\\\\E5UH OH!!!/%%";
    if(global.flag[389] <= 3 || global.kills > 0) {
        global.msg[2]= "\\\\E0HEY!!^1! HUMAN!!!/";
        global.msg[3]= "HOW ARE YOU DOING^1?&I\\'M DOING FINE!!!/";
        global.msg[4]= "\\\\E3WELL, BESIDES ONE&THING.../";
        global.msg[5]= "\\\\E3THE QUEEN&DISBANDED THE&ROYAL GUARD./";
        global.msg[6]= "SINCE WE DON\\'T&HAVE TO FIGHT&HUMANS ANYMORE./";
        global.msg[7]= "\\\\E0WOW!!!/";
        global.msg[8]= "\\\\E3I HAVE NO IDEA&WHAT TO DO&WITH MY LIFE./";
        global.msg[9]= "\\\\E0BUT^1, THAT\\'S&OKAY!/";
        global.msg[10]= "BECAUSE I\\'M&STILL WORKING&HARD!/";
        global.msg[11]= "\\\\E4EVEN IF IT\\'S&ON NOTHING AT&ALL!/";
        global.msg[12]= "\\\\E0SO DON\\'T FEEL&BAD!/";
        global.msg[13]= "PAPYRUS IS FINE!/";
        global.msg[14]= "\\\\E5UNDYNE IS THE&ONE THAT\\'S GOT&IT BAD!/";
        global.msg[15]= "\\\\E3SHE LOST HER&JOB.../";
        global.msg[16]= "THEN SHE LOST&HER HOUSE.../";
        global.msg[17]= "\\\\E2IT WAS SAD..^1.&BUT WE\\'RE TAKING&CARE OF HER!/";
        global.msg[18]= "\\\\E0SHE LIVES ON&OUR COUCH NOW./";
        global.msg[19]= "IT\\'S LIKE A&SLEEPOVER EVERY&NIGHT!/";
        global.msg[20]= "A SLEEPOVER&THERE\\'S NO&ESCAPE FROM./";
        global.msg[21]= "OH^1, WE GAVE HER&A JOB^1, TOO./";
        global.msg[22]= "\\\\E3SANS HIRED HER AT&HIS ILLEGAL HOT&DOG STAND./";
        global.msg[23]= "\\\\E5SHE HATES WORKING&THERE!/";
        global.msg[24]= "\\\\E3BUT SHE MAKES&A MEAN HOT DOG./";
        global.msg[25]= "\\\\E3.../";
        global.msg[26]= "\\\\E5OH YEAH./";
        if(global.kills >= 1 && global.flag[389] > 0) {
            global.msg[27]= "I DON\\'T KNOW HOW&TO PUT THIS^1,&BUT.../";
            global.msg[28]= "\\\\E3SHE^1, UM^1, REALLY&HATES YOU NOW./";
            global.msg[29]= "\\\\E6EVEN MORE THAN&SHE EVER HAS./";
            global.msg[30]= "IT\\'S BECAUSE SHE&MADE FRIENDS WITH&YOU^1, THEN.../";
            global.msg[31]= "\\\\E5SHE SAID YOU&KILLED SOMEONE?/";
            global.msg[32]= "\\\\E3I KNOW^1, THAT&SOUNDS RIDICULOUS&DOESN\\'T IT?/";
            global.msg[33]= "\\\\E6BUT SHE FEELS SO&HURT AND BETRAYED./";
            global.msg[34]= "AND ANGRY AT&HERSELF^1, TOO./";
            global.msg[35]= "SHE SAYS.../";
            global.msg[36]= "SHE DOESN\\'T&UNDERSTAND WHY.../";
            global.msg[37]= "SHE EVER LET&HERSELF BECOME&FRIENDS WITH YOU./";
            global.msg[38]= "THAT SHE KNEW&WHAT HUMANS WERE&LIKE.../";
            global.msg[39]= "\\\\E3AND YET SHE&STILL FAILED TO&RESIST./";
            global.msg[40]= "\\\\E6MORE PEOPLE GOT&HURT BECAUSE OF&HER MISTAKE./";
            global.msg[41]= "\\\\E5I REALLY CAN\\'T&UNDERSTATE./";
            global.msg[42]= "HOW MUCH SHE&HATES YOU./";
            global.msg[43]= "\\\\E6IT PAINS ME TO&SAY THIS^1, BUT.../";
            global.msg[44]= "YOU SHOULD&PROBABLY NEVER&COME BACK HERE./";
            global.msg[45]= "\\\\E3IF YOU DO^1, UNDYNE&WILL DEFINITELY&DESTROY YOU./";
            global.msg[46]= "\\\\E5NOT EVEN THE QUEEN&CAN STOP HER./";
            global.msg[47]= "\\\\E6SO^1, UH..^1.&GOODBYE FOREVER./";
            global.msg[48]= "I\\'LL MISS YOU^1,&MY FRIEND./%%";
            if(global.flag[425] == 1) {
                global.msg[32]= "\\\\E5AND YOU MADE&ASGORE DISAPPEAR?/";
                global.msg[33]= "\\\\E3AND MADE ALPHYS&DISAPPEAR^1, TOO./";
                global.msg[34]= "\\\\E6SHE\\'S NOT VERY&HAPPY./";
                global.msg[35]= "SHE SAYS THINGS&LIKE.../";
                global.msg[36]= "" + chr(ord("\"")) + "I COULDN\\'T PROTECT&HER.../" + chr(ord("\"")) + "";
                global.msg[37]= "IT\\'S HARD TO GET&HER TO DO ANYTHING&NOW./";
                global.msg[38]= "\\\\E5I EVEN SUGGESTED&WE TRY TO GET&REVENGE ON YOU./";
                global.msg[39]= "\\\\E0YOU KNOW^1, SO I&COULD SEE YOU&AGAIN./";
                global.msg[40]= "\\\\E5BUT SHE JUST&LOOKED AT ME AND&SAID.../";
                global.msg[41]= "\\\\E6REVENGE WON\\'T BRING&ANYBODY BACK./";
                global.msg[42]= "\\\\E3I HAVE NO IDEA&WHAT YOU DID^1,&BUT.../";
                global.msg[43]= "\\\\E5CAN YOU PLEASE&BRING BACK HER&FRIENDS?/";
                global.msg[44]= "IF YOU MADE THEM&DISAPPEAR?/";
                global.msg[45]= "\\\\E6PLEASE.../";
                global.msg[46]= "UNDYNE\\'S NOT&DOING VERY WELL./";
                global.msg[47]= "BYE./%%";
            }
        } else  {
            global.msg[27]= "\\\\E3SHE STILL BLAMES&YOU.../";
            global.msg[28]= "\\\\E3FOR THE&DISAPPEARANCE&OF ASGORE./";
            global.msg[29]= "\\\\E3.../";
            global.msg[30]= "\\\\E3SHE TALKS TO ME&A LOT.../";
            global.msg[31]= "\\\\E5ABOUT GETTING&REVENGE ON YOU./";
            global.msg[32]= "SHE HAS A&LUDICROUS PLAN.../";
            global.msg[33]= "TO CROSS THE&BARRIER AND&BEAT YOU UP./";
            global.msg[34]= "\\\\E3TO BE HONEST^1,&I THINK IT\\'S&IMPOSSIBLE./";
            global.msg[35]= "\\\\E0BUT I\\'D LIKE TO&BELIEVE IT\\'S&NOT!!!/";
            global.msg[36]= "CAUSE I WANT TO&GO WITH HER!/";
            global.msg[37]= "THEN I\\'D GET TO&SEE YOU AGAIN!/";
            global.msg[38]= "\\\\E3EVEN IF I\\'D HAVE&TO FIGHT YOU./";
            global.msg[39]= "\\\\E0WELL^1, KEEP YOUR&FINGERS CROSSED!/";
            global.msg[40]= "AND KEEP IN&TOUCH.../";
            global.msg[41]= "IT\\'LL MAKE OUR&PLANS EASIER./";
            global.msg[42]= "BYE!/%%";
            if(global.flag[425] == 1) {
                global.msg[29]= "\\\\E5AND ALPHYS\\'&DISAPPEARANCE^1, TOO./";
                global.msg[30]= "\\\\E3SHE\\'S NOT VERY&HAPPY./";
                global.msg[31]= "\\\\E6SHE SAYS THINGS&LIKE.../";
                global.msg[32]= "" + chr(ord("\"")) + "I COULDN\\'T PROTECT&HER.../" + chr(ord("\"")) + "";
                global.msg[33]= "IT\\'S HARD TO GET&HER TO DO ANYTHING&NOW./";
                global.msg[34]= "\\\\E5I EVEN SUGGESTED&WE TRY TO GET&REVENGE ON YOU./";
                global.msg[35]= "\\\\E0YOU KNOW^1, SO I&COULD SEE YOU&AGAIN./";
                global.msg[36]= "\\\\E3BUT SHE JUST&LOOKED AT ME AND&SAID.../";
                global.msg[37]= "\\\\E6REVENGE WON\\'T BRING&ANYBODY BACK./";
                global.msg[38]= "I HAVE NO IDEA&WHAT YOU DID^1,&BUT.../";
                global.msg[39]= "\\\\E5CAN YOU PLEASE&BRING BACK HER&FRIENDS?/";
                global.msg[40]= "IF YOU MADE THEM&DISAPPEAR?/";
                global.msg[41]= "\\\\E6PLEASE.../";
                global.msg[42]= "UNDYNE\\'S NOT&DOING VERY WELL./";
                global.msg[43]= "BYE./%%";
            }
        }
        con= 8;
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    global.flag[430]= 0;
    con= 8;
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 2;
    global.msg[0]= "* Hey^1!&* What are you up&  to^1, punk!?/";
    global.msg[1]= "\\\\E1* Ngahhhh!/";
    scr_papface(2, 5);
    global.msg[3]= "PLEASE DON\\'T NOOGIE&THE PHONE./";
    scr_undface(4, 3);
    global.msg[5]= "\\\\E2* Hey^1!&* Who\\'s in charge&  here!?/";
    scr_papface(6, 5);
    global.msg[7]= "ME./";
    scr_undface(8, 6);
    global.msg[9]= "* Oh..^1. yeah^1, that\\'s&  right!/";
    global.msg[10]= "\\\\E0* I quit my job as&  leader of the Royal&  Guard./";
    global.msg[11]= "\\\\E4* Actually^1, since we&  won\\'t be fighting&  anymore.../";
    global.msg[12]= "\\\\E1* The Royal Guard&  totally disbanded./";
    global.msg[13]= "\\\\E9* There\\'s^1, uh^1, only&  one member now./";
    scr_papface(14, 0);
    global.msg[15]= "BUT HE\\'S EXTREMELY&GOOD./";
    scr_undface(16, 6);
    global.msg[17]= "* Yeah!^1! He is!!^1!&* C\\'mere!!/";
    scr_papface(18, 5);
    global.msg[19]= "PLEASE DON\\'T NOOGIE&THE SKELETON./";
    scr_undface(20, 9);
    global.msg[21]= "* Anyways^1, now I\\'m&  working as Alphy\\'s&  lab assistant.../";
    global.msg[22]= "\\\\E2* We\\'re gonna find a&  way out of this dump&  once and for all!!/";
    global.msg[23]= "\\\\E9* Oh^1, yeah^1, and I\\'m a&  gym teacher at the&  queen\\'s new school./";
    global.msg[24]= "\\\\E6* Did you know I can&  bench-press seven&  children!?/";
    global.msg[25]= "\\\\E9* Awesome^1, right?/";
    global.msg[26]= "* .../";
    global.msg[27]= "\\\\E0* Hey./";
    global.msg[28]= "\\\\E4* I\\'m sorry about what&  happened with ASGORE./";
    global.msg[29]= "\\\\E4* You were just doing&  what you had to./";
    global.msg[30]= "* It\\'s not your fault&  he.../";
    global.msg[31]= "* .../";
    global.msg[32]= "\\\\E7* Ah^1, darn it./";
    global.msg[33]= "* I miss the big guy./";
    global.msg[34]= "\\\\E7* .../";
    global.msg[35]= "\\\\E1* Come on^1, Undyne^1!&* Snap out of it!/";
    global.msg[36]= "\\\\E4* Uh^1, I guess I\\'ll&  tell you how Alphys&  is doing./";
    global.msg[37]= "\\\\E0* Well^1, she\\'s the&  same as ever./";
    global.msg[38]= "\\\\E4* Maybe a little more&  reclusive than&  normal./";
    global.msg[39]= "\\\\E7* Seems like something\\'s&  really bothering&  her.../";
    global.msg[40]= "\\\\E1* But she can get&  through it!/";
    global.msg[41]= "\\\\E2* I\\'m there supporting&  her!!/";
    global.msg[42]= "\\\\E9* That\\'s what friends&  are for^1, right?/";
    global.msg[43]= "\\\\E9* .../";
    global.msg[44]= "\\\\E0* Hey^1, where-ever you&  are.../";
    global.msg[45]= "\\\\E4* I hope it\\'s better&  than here./";
    global.msg[46]= "\\\\E7* It took a lot of&  sacrifice for you&  to get there.../";
    global.msg[47]= "* So^1, where-ever you&  are.../";
    global.msg[48]= "\\\\E6* You have to try to&  be happy^1, okay!?/";
    global.msg[49]= "\\\\E2* For our sakes!/";
    global.msg[50]= "\\\\E0* We\\'ll feel better&  knowing our trouble&  was worth it./";
    global.msg[51]= "\\\\E9* We\\'re all with you^1!&* Everyone is^1!&* Even the queen!/";
    global.msg[52]= "\\\\E1* .../";
    global.msg[53]= "\\\\E2* HEYYY^1!&* WAIT a second!/";
    global.msg[54]= "\\\\E6* TORIEL^1!&* TORIEL^1!&* Do you wanna...?/";
    global.msg[55]= "\\\\E1* .../";
    global.msg[56]= "\\\\E9* Heh^1, she says&  she\\'s busy./";
    scr_papface(57, 0);
    global.msg[58]= "BUT IF SHE KNEW&WHO WE WERE&TALKING TO.../";
    scr_sansface(59, 2);
    global.msg[60]= "* we wouldn\\'t get the&  phone back for at&  least a few hours./";
    scr_papface(61, 0);
    global.msg[62]= "WE HAVE THE&MERCY TO SPARE&YOU FROM HER!!/";
    scr_undface(63, 9);
    global.msg[64]= "* But call back any&  time^1, ok?!&* She\\'d love to talk!/";
    scr_sansface(65, 2);
    global.msg[66]= "* oh^1, whoops./";
    global.msg[67]= "\\\\E0* this thing\\'s almost&  outta batteries./";
    global.msg[68]= "\\\\E1* so^1, hate to cut this&  short^1, but.../";
    global.msg[69]= "\\\\E2* be seeing you^1, ok^1,&  buddy?/";
    scr_papface(70, 0);
    global.msg[71]= "BYE BYE FOR NOW!/";
    scr_undface(72, 2);
    global.msg[73]= "* See ya^1, punk!/%%";
    if(global.flag[493] >= 10) {
        scr_alface(34, 3);
        global.msg[35]= "* H-hey^1, Undyne^1, are&  you okay...?/";
        scr_undface(36, 9);
        global.msg[37]= "* I\\'m fine^1.&* Why don\\'t you talk&  for a while?/";
        scr_alface(38, 3);
        global.msg[39]= "* U..^1. uh^1, okay!/%%";
        con= 7;
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    global.flag[430]= 0;
    con= 8;
    global.typer= 47;
    global.facechoice= 6;
    global.faceemotion= 0;
    global.msg[0]= "* Man^1, she\\'s tsundere.../";
    global.msg[1]= "\\\\E1* .../";
    global.msg[2]= "\\\\E2* .../";
    global.msg[3]= "\\\\E7* Um^1, hi.../";
    global.msg[4]= "\\\\E4* S-sorry^1, I hate&  talking on the&  phone./";
    global.msg[5]= "\\\\E3* I don\\'t really know&  what to say./";
    global.msg[6]= "\\\\E1* .../";
    global.msg[7]= "\\\\E7* Hey^1, why didn\\'t you&  tell me the queen&  was so cute?/";
    global.msg[8]= "\\\\E3* Uh^1, I mean^1, uh.../";
    global.msg[9]= "\\\\E6* Mettaton\\'s doing OK!/";
    global.msg[10]= "* And^1! Um!/";
    global.msg[11]= "\\\\E6* I\\'m trying to figure&  a way for us to&  get out of here!/";
    global.msg[12]= "\\\\E4* B-but I kinda have&  no idea what I\\'m&  doing./";
    global.msg[13]= "\\\\E0* I\\'ll figure it out&  eventually^1, though./";
    global.msg[14]= "\\\\E3* The queen is a lot&  different from&  ASGORE.../";
    global.msg[15]= "\\\\E7* She actually checks to&  see if I\\'m doing&  anything./";
    global.msg[16]= "\\\\E0* She\\'s really turned&  this whole place&  around!/";
    global.msg[17]= "\\\\E2* .../";
    global.msg[18]= "\\\\E3* Oh^1!&* Hey^1!&* Wait a second!/";
    global.msg[19]= "\\\\E0* Hey^1! TORIEL^1!&* Do you wanna talk&  to...?/";
    global.msg[20]= "\\\\E1* .../";
    global.msg[21]= "\\\\E0* Well^1, she says she\\'s&  busy./";
    scr_undface(22, 6);
    global.msg[23]= "* Oh^1, she SAYS she\\'s&  busy./";
    scr_papface(24, 0);
    global.msg[25]= "IF SHE KNEW WHO&WE WERE TALKING&TO.../";
    scr_sansface(26, 2);
    global.msg[27]= "* we wouldn\\'t get the&  phone back for at&  least a few hours./";
    scr_papface(28, 0);
    global.msg[29]= "WE HAVE THE&MERCY TO SPARE&YOU FROM HER!!/";
    scr_alface(30, 3);
    global.msg[31]= "* B-but^1, if you want&  to^1, call and talk&  to her any time./";
    scr_undface(32, 9);
    global.msg[33]= "* Yeah^1!&* She\\'d be happy to&  hear from ya!/";
    scr_sansface(34, 2);
    global.msg[35]= "* oh^1, whoops./";
    global.msg[36]= "\\\\E0* this thing\\'s almost&  outta batteries./";
    global.msg[37]= "\\\\E1* so^1, hate to cut this&  short^1, but.../";
    global.msg[38]= "\\\\E2* be seeing you^1, ok^1,&  buddy?/";
    scr_papface(39, 0);
    global.msg[40]= "BYE BYE FOR NOW!/";
    scr_undface(41, 9);
    global.msg[42]= "* See ya^1, punk!/";
    scr_alface(43, 3);
    global.msg[44]= "* G-good..^1.&* Good.../";
    global.msg[45]= "\\\\E4* Hey^1, why do I&  have to be the one&  to hang up?/";
    global.msg[46]= "\\\\E7* Eheheh..^1.&* I hate goodbyes.../";
    global.msg[47]= "\\\\E3* Um^1, we\\'ll see you&  again someday!/%%";
    instance_create(0, 0, obj_dialoguer );
}
if(con == 8 && !instance_exists(OBJ_WRITER )) {
    con= 9;
    mf= instance_create(0, 0, obj_musfadeout );
    mf.fadespeed= 0.02;
    global.typer= 5;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msg[0]= "* (Click...)/%%";
    instance_create(0, 0, obj_dialoguer );
}
if(con == 9 && !instance_exists(OBJ_WRITER )) {
    con= 10;
    alarm[4]= 150;
}
if(con == 11) {
    ini_open("undertale.ini");
    K= ini_read_real("Flowey", "K", 0);
    SPECIALK= ini_read_real("Flowey", "SPECIALK", 0);
    ini_close();
    if(K > 0 || SPECIALK > 0) global.flag[475]= 1;
    if(global.flag[475] == 0) {
        instance_create(0, 0, obj_endflowey );
        con= 14;
        instance_destroy();
    } else  game_restart();
}
if(con == 21 && !instance_exists(OBJ_WRITER )) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.msg[0]= "* so..^1.&* it\\'s been a while./";
    global.msg[1]= "\\\\E0* the queen returned^1, and&  attempted to resume&  ruling the underground./";
    global.msg[2]= "* she enstated a new&  policy.../";
    global.msg[3]= "\\\\E3* all the humans who fall&  here would be treated&  not as enemies.../";
    global.msg[4]= "\\\\E0* but as friends./";
    global.msg[5]= "\\\\E3* .../";
    global.msg[6]= "\\\\E1* but people REALLY&  didn\\'t like that&  policy./";
    global.msg[7]= "\\\\E0* because of you^1, not&  only was the king&  gone.../";
    global.msg[8]= "\\\\E3* but the human souls&  had gone missing as&  well.../";
    global.msg[9]= "* along with the lives&  of countless citizens./";
    if(global.flag[67] == 1) global.msg[9]= "* along with the life&  of.../";
    if(global.flag[350] == 1)
        global.msg[9]= "* along with the life&  of undyne^1, their&  greatest hero./";
    if(global.kills >= 10)
        global.msg[9]= "* along with the lives&  of countless citizens./";
    global.msg[10]= "* nobody wanted to see&  that happen ever again./";
    global.msg[11]= "\\\\E0* so the people started&  a rebellion to&  overthrow the queen./";
    global.msg[12]= "\\\\E2* but^1, she^1, uh^1, pretty&  much gave up peacefully&  when she realized./";
    global.msg[13]= "\\\\E1* so she went back&  to the ruins./";
    global.msg[14]= "\\\\E0* the underground\\'s&  basically an uneasy&  anarchy now./";
    global.msg[15]= "\\\\E0* everyone\\'s trying to&  live life like they&  always have.../";
    global.msg[16]= "\\\\E3* but it\\'s not really&  easy^1, you know?/";
    global.msg[17]= "* when all of your&  hope has pretty much&  been thrown away.../%%";
    global.msg[18]= "* .../%%";
    if(global.flag[350] != 1) {
        global.msg[12]= "\\\\E1* undyne spearheaded&  the revolution^1, of&  course./";
        if(global.flag[425] == 0)
            global.msg[13]= "\\\\E3* she was pretty mad&  after what happened&  to asgore./";
        else 
            global.msg[13]= "\\\\E3* she was pretty mad&  after what happened&  to asgore and alphys./";
        global.msg[14]= "\\\\E1* she threw the queen&  out of the castle&  with her strength./";
        global.msg[15]= "\\\\E0* then she became the&  empress of the&  underground.../";
        global.msg[16]= "* and banished the&  queen back to the&  ruins./";
        global.msg[17]= "\\\\E1* seems like undyne\\'s..^1.&* hmmm.../";
        global.msg[18]= "\\\\E3* even more vehement&  about destroying&  humanity than ASGORE./";
        global.msg[19]= "\\\\E1* .../%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 22;
}
if(con == 22 && !instance_exists(OBJ_WRITER )) {
    if(global.flag[67] != 1) {
        con= 8;
        global.msg[0]= "\\\\E2* but hey^1!&* it\\'s not all bad!/";
        global.msg[1]= "\\\\E0* she\\'s not so lonely&  anymore./";
        global.msg[2]= "\\\\E1* me and papyrus go&  and visit her.../";
        global.msg[3]= "\\\\E0* we bring her books&  from the library^1,&  or play games.../";
        global.msg[4]= "\\\\E2* we\\'ve even convinced&  her to leave&  sometimes./";
        global.msg[5]= "\\\\E1* as long as me or&  papyrus stay behind&  to watch for humans./";
        global.msg[6]= "\\\\E2* but papyrus loves&  doing that./";
        scr_papface(7, 0);
        global.msg[8]= "YEAH!!^1!&I LOVE STANDING IN&FOR THE QUEEN!!!/";
        global.msg[9]= "I\\'VE BEEN PRACTICING&FOR WHEN A HUMAN&COMES./";
        global.msg[10]= "I\\'M GOING TO BE&A GREAT MOM!!!/";
        global.msg[11]= "\\\\E3BY THE WAY^1,&WHO ARE YOU&TALKING TO?/";
        scr_sansface(12, 2);
        global.msg[13]= "* oh^1, nobody./";
        scr_papface(14, 0);
        global.msg[15]= "OH, COOL^1.&TELL THEM I SAY&HI!!!/";
        scr_sansface(16, 1);
        global.msg[17]= "* papyrus says hi./";
        global.msg[18]= "\\\\E0* well^1, i hope things&  are better where&  you are./";
        global.msg[19]= "\\\\E2* later./%%";
    } else  {
        con= 23;
        global.msg[0]= "\\\\E2* but hey^1!&* it\\'s not all bad!/";
        global.msg[1]= "\\\\E1* when the queen went&  back to the ruins.../";
        global.msg[2]= "\\\\E2* i decided to go&  with her./";
        global.msg[3]= "\\\\E1* and i took out some&  books from the&  library^1, too./";
        global.msg[4]= "\\\\E1* so she won\\'t have&  to read the same&  ones./";
        global.msg[5]= "\\\\E0* she\\'s a good roomie^1.&* we have a lot of&  fun./";
        global.msg[6]= "\\\\E1* .../";
        global.msg[7]= "\\\\E1* you know./";
        global.msg[8]= "\\\\E1* sometimes the queen&  talks about.../";
        global.msg[9]= "\\\\E0* how she\\'d like to&  see you again./";
        global.msg[10]= "\\\\E1* isn\\'t that nice?/";
        global.msg[11]= "\\\\E3* .../";
        global.msg[12]= "\\\\E3* i don\\'t have the&  heart to tell her&  what you did./";
        global.msg[13]= "\\\\E0* do you know how she\\'d&  react?/";
        global.msg[14]= "\\\\E3* if i told her that&  \\'cause she protected&  you.../";
        global.msg[15]= "\\\\E4* ... you went on to&  kill my brother...?/";
        global.msg[16]= "\\\\E3* .../";
        global.msg[17]= "\\\\E1* anyway^1, never come&  back here./";
        global.msg[18]= "\\\\E0* you are not welcome./";
        global.msg[19]= "\\\\E2* later./%%";
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 23 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 14)
    caster_stop(global.currentsong);
if(con == 23 && !instance_exists(OBJ_WRITER )) con= 8;
if(con == 31 && !instance_exists(OBJ_WRITER )) {
    global.facechoice= 3;
    global.faceemotion= 1;
    con= 8;
    global.msg[0]= "* since you left^1,&  things down here.../";
    global.msg[1]= "\\\\E3* are different./";
    global.msg[2]= "* with ASGORE gone.../";
    global.msg[3]= "\\\\E0* undyne became the&  ruler of the&  underground./";
    global.msg[4]= "\\\\E3* she\\'s decided to&  destroy every human&  that comes here./";
    global.msg[5]= "\\\\E3* and since the human&  souls disappeared.../";
    global.msg[6]= "\\\\E0* she\\'s also looking&  for a new way to&  break the barrier.../";
    global.msg[7]= "* and when she does^1,&  she\\'s going to wage&  war on humanity./";
    global.msg[8]= "\\\\E1* i mean^1, that was&  asgore\\'s plan^1, too./";
    global.msg[9]= "\\\\E2* but he was really^1,&  uh^1, bad at it./";
    global.msg[10]= "\\\\E0* undyne has also&  expanded the royal&  guard massively./";
    global.msg[11]= "* she says the first&  thing she\\'ll do after&  we get out of here.../";
    global.msg[12]= "* is take her army.../";
    global.msg[13]= "\\\\E3* and personally hunt&  you down and destroy&  you./";
    if(global.flag[67] == 1) {
        global.msg[14]= "\\\\E1* meanwhile.../";
        global.msg[15]= "* i\\'ve been knocking&  on the door to&  the RUINs.../";
        global.msg[16]= "\\\\E3* but the woman that\\'s&  there hasn\\'t been&  answering me./";
        global.msg[17]= "\\\\E1* maybe she\\'s not&  feeling well?/";
        global.msg[18]= "\\\\E3* heh./";
        global.msg[19]= "\\\\E4* or maybe she\\'s not&  feeling anything at&  all...?/";
        global.msg[20]= "\\\\E4* you\\'d better watch&  yourself^1, kid./";
        global.msg[21]= "\\\\E4* things are lookin&  real bad for you./%%";
        con= 32;
    } else  {
        global.msg[14]= "\\\\E1* meanwhile.../";
        global.msg[15]= "\\\\E3* i\\'ve been knocking on&  the door to the&  RUINS.../";
        global.msg[16]= "\\\\E3* but that woman hasn\\'t&  been answering me.../";
        global.msg[17]= "\\\\E1* maybe she\\'s not&  feeling well?/";
        scr_papface(18, 3);
        global.msg[19]= "HEY^1, SANS^1, WHO ARE&YOU TALKING TO?/";
        scr_sansface(20, 2);
        global.msg[21]= "* oh^1, just the human./";
        scr_papface(22, 2);
        global.msg[23]= "OH^1, COOL./";
        global.msg[24]= "\\\\E3.../";
        global.msg[25]= "\\\\E5WAIT, DID YOU&SAY THE HUMAN!?/";
        global.msg[26]= "\\\\E0CAN I TALK TO&THEM???/";
        scr_sansface(27, 1);
        global.msg[28]= "* sure^1, knock yourself&  out./";
        scr_papface(29, 0);
        global.msg[30]= "HEY!!^1!&UNDYNE\\'S THE&EMPRESS NOW!!/";
        global.msg[31]= "IT\\'S AMAZING!!!/";
        global.msg[32]= "AND SHE APPOINTED&ME TO BE.../";
        global.msg[33]= "THE MOST IMPORTANT&ROYAL POSITION!!!/";
        global.msg[34]= "\\\\E3.../";
        global.msg[35]= "\\\\E3THAT\\'S IT^1.&THAT\\'S LITERALLY&THE TITLE./";
        global.msg[36]= "\\\\E0WHAT DO I DO?/";
        global.msg[37]= "\\\\E3SHE TOLD ME TO^1,&UM.../";
        global.msg[38]= "\\\\E3STAND AROUND AND&LOOK CUTE./";
        global.msg[39]= "\\\\E0WELL!!^1!&THAT\\'S THE PERFECT&JOB FOR ME!!!/";
        global.msg[40]= "I DO THAT ALL THE&TIME^1, WITHOUT&TRYING!!/";
        global.msg[41]= "FINALLY!^1!&I\\'M IMPORTANT./";
        global.msg[42]= "AND IT\\'S ALL&THANKS TO YOU,/";
        global.msg[43]= "AND THE HORRIBLE&THINGS YOU DID./";
        global.msg[44]= "THANK YOU^1, HUMAN!/";
        global.msg[45]= "COME BACK AND&VISIT SOMETIME!!/";
        global.msg[46]= "\\\\E3WAIT..^1.&UNDYNE WOULD&PROBABLY KILL YOU./";
        global.msg[47]= "\\\\E0BUT..^1.&YOU\\'D GET TO&SEE ME./";
        global.msg[48]= "SO YOU GOTTA&RISK IT!!!/";
        global.msg[49]= "YOU GOTTA!!!/";
        global.msg[50]= "SEE YOU SOON./%%";
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 32 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 18)
    caster_stop(global.currentsong);
if(con == 32 && !instance_exists(OBJ_WRITER )) con= 8;
if(con == 41) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.msg[0]= "* so^1, it\\'s been a&  while./";
    global.msg[1]= "\\\\E1* since you left^1, things&  have..^1.&* gotten interesting./";
    global.msg[2]= "\\\\E0* with ASGORE gone^1, the&  people looked to&  undyne to rule.../";
    global.msg[3]= "\\\\E3* but she was nowhere&  to be found./";
    global.msg[4]= "\\\\E2* so mettaton just&  kind of..^1.&* took over?/";
    global.msg[5]= "\\\\E1* he\\'s brainwashed&  everyone with his&  stupid TV show./";
    global.msg[6]= "* and made the&  underground into his&  personal paradise./";
    global.msg[7]= "\\\\E3* it\\'s honestly..^1.&* kinda disturbing./";
    global.msg[8]= "\\\\E1* as for me^1?&* oh^1, yeah.../";
    global.msg[9]= "\\\\E2* i\\'m his agent./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 42;
}
if(con == 42 && !instance_exists(OBJ_WRITER )) {
    caster_play(global.currentsong, 0.7, 0.95);
    global.typer= 27;
    global.facechoice= 8;
    global.faceemotion= 0;
    global.msg[0]= "\\\\E0* HEY THERE^1, DARLING!/";
    global.msg[1]= "* THANK YOU SO MUCH FOR&  YOUR HARD WORK.../";
    global.msg[2]= "* THANKS TO YOU, THE&  UNDERGROUND IS MORE&  EXCITING THAN EVER!/";
    global.msg[3]= "\\\\E7* OOH LA LA...&* STATUES... MONUMENTS&  TO MY BEAUTY.../";
    global.msg[4]= "\\\\E6* FLOWERS IN THE&  ARRANGEMENT OF MY&  NAME.../";
    global.msg[5]= "\\\\E5* HEDGES IN THE SHAPE&  OF MY SMILE.../";
    global.msg[6]= "\\\\E8* UNDER MY RULE, THE&  UNDERGROUND\\'S PROBLEMS&  ARE OVER, BABY!/";
    global.msg[7]= "\\\\E7* CROWDING?&* DREARINESS???/";
    global.msg[8]= "\\\\E9* WHO NEEDS THE SUN&  WHEN YOU\\'VE GOT&  THE SPOTLIGHT!!?/";
    global.msg[9]= "\\\\E1* ECONOMIC COLLAPSE?&* EDUCATION PROBLEMS?&* WHAT!?/";
    global.msg[10]= "\\\\E8* EVERYTHING\\'S COVERED&  IN GOLDEN GLITTER!/";
    global.msg[11]= "\\\\E6* THERE ARE NO&  PROBLEMS, BEAUTIFUL!/";
    global.msg[12]= "\\\\E0* AND, I\\'VE ENSTATED&  A NEW POLICY ON&  HUMANITY./";
    global.msg[13]= "\\\\E1* IF A HUMAN FALLS DOWN&  HERE.../";
    global.msg[14]= "\\\\E6* THEY CAN JOIN MY&  FAN CLUB FOR FREE!/";
    global.msg[15]= "\\\\E1* OH, YOU MIGHT BE&  WONDERING ABOUT&  ALPHYS./";
    global.msg[16]= "\\\\E0* DON\\'T WORRY!/";
    global.msg[17]= "\\\\E9* I BUILT A STATUE&  OF HER, TOO./";
    global.msg[18]= "\\\\E1* .../";
    global.msg[19]= "\\\\E3* REALLY THOUGH.&* I REALIZED I WAS.../";
    global.msg[20]= "\\\\E4* NOT THE GREATEST&  TO HER./";
    global.msg[21]= "\\\\E1* SO I WENT TO&  APOLOGIZE./";
    global.msg[22]= "\\\\E9* AND, TO ASK HER&  TO HELP ME RULE./";
    global.msg[23]= "\\\\E1* .../";
    global.msg[24]= "\\\\E3* BUT I COULDN\\'T FIND&  HER./";
    global.msg[25]= "\\\\E4* TRUST ME.&* I LOOKED./";
    global.msg[26]= "\\\\E3* .../";
    global.msg[27]= "\\\\E1* ANYWAY./";
    global.msg[28]= "\\\\E2* I HOPE YOUR LIFE&  AFTER MEETING ME.../";
    global.msg[29]= "\\\\E7* HAS BEEN WORTH LIVING./";
    global.msg[30]= "\\\\E6* IT MUST BE A STRUGGLE./";
    global.msg[31]= "\\\\E0* PLEASE, THINK OF ME&  ALWAYS./";
    global.msg[32]= "\\\\E5* JUST CONSTANTLY.&* THINK OF ME POSING.&* BEAUTIFULLY.../";
    global.msg[33]= "\\\\E6* OH YESSSS!!!/";
    if(global.flag[67] == 1) global.msg[33]= "\\\\E6* OH YESSSS!!!/%%";
    else  {
        global.msg[34]= "\\\\E2* OH^1, MY OTHER AGENT&  WANTS TO TALK./";
        scr_papface(35, 0);
        global.msg[36]= "HEY!!^1!&IT\\'S ME^1, PAPYRUS!!/";
        global.msg[37]= "\\\\E2IMAGINE ME WEARING&COOL GLASSES^1, AND&A SUIT./";
        global.msg[38]= "\\\\E0AND IMAGINE SANS&WEARING SUNGLASSES&BEING A BOUNCER./";
        global.msg[39]= "THAT\\'S OUR LIFE..^1.&IT\\'S SO COOL!!!/";
        global.msg[40]= "THINGS HAVE GOTTEN&WAY BETTER SINCE&YOU CAME HERE!!!/";
        global.msg[41]= "\\\\E3WELL^1, MINUS THE&FACT THAT&EVERYTHING SUCKS.../";
        global.msg[42]= "\\\\E5FOR ANYONE THAT&DOESNT WORSHIP&METTATON./";
        global.msg[43]= "\\\\E3AND MINUS THE FACT&THAT MY FRIEND&UNDYNE IS MISSING./";
        global.msg[44]= "WHO KNOWS WHERE&SHE WENT./";
        global.msg[45]= "SHE NEVER LIKED&METTATON\\'S SHOW./";
        global.msg[46]= "\\\\E3PEOPLE WHO DON\\'T&TEND TO KIND OF.../";
        global.msg[47]= "\\\\E5DISAPPEAR./";
        global.msg[48]= "\\\\E6I MISS HER A&LOT SOMETIMES./";
        global.msg[49]= "\\\\E0IF YOU SEE HER^1,&CAN YOU TELL HER&I SAID HI?/";
        global.msg[50]= "THANKS^1!&SEE YOU LATER!/%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 43;
}
if(con == 43 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 20) caster_pause(global.currentsong);
    if(OBJ_WRITER.stringno == 27) caster_resume(global.currentsong);
}
if(con == 43 && !instance_exists(OBJ_WRITER )) con= 8;
if(con == 51) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.msg[0]= "\\\\E3* so.^1.&* it\\'s been a while./";
    global.msg[1]= "* since you left.../";
    global.msg[2]= "\\\\E1* things have gotten&  really strange./";
    global.msg[3]= "\\\\E0* overnight^1, a bunch of&  people mysteriously&  disappeared./";
    global.msg[4]= "\\\\E3* as well as the&  human souls./";
    global.msg[5]= "\\\\E3* people were heart-&  broken. everyone they&  looked up to.../";
    global.msg[6]= "* everything they were&  relying on^1, in one&  night, disappeared./";
    global.msg[7]= "* everyone clamored to&  elect a new ruler as&  fast as possible./";
    global.msg[8]= "\\\\E1* so^1, uh..^1.&* by process of&  elimination.../";
    global.msg[9]= "\\\\E2* papyrus became the&  ruler?/";
    global.msg[10]= "\\\\E1* why doesn\\'t he talk&  to you about this.../";
    scr_papface(11, 0);
    global.msg[12]= "\\\\E0HELLO!!^1!&HUMAN!!!/";
    global.msg[13]= "\\\\E3IT\\'S STRANGE./";
    global.msg[14]= "\\\\E3ASGORE^1, ALPHYS^1,&METTATON^1, AND&UNDYNE WENT AWAY./";
    global.msg[15]= "\\\\E0SANS SAYS THEY&WENT ON VACATION./";
    global.msg[16]= "I HOPE THEY\\'RE&HAVING FUN!!!/";
    global.msg[17]= "\\\\E3OH YEAH./";
    global.msg[18]= "\\\\E0I\\'M THE RULER OF&THE UNDERGROUND&NOW!!!/";
    global.msg[19]= "EVERYTHING IS&IMPROVING A LOT&HERE./";
    global.msg[20]= "PRODUCTIVITY IS UP!/";
    global.msg[21]= "BECAUSE I TELL&EVERYONE TO KEEP&WORKING./";
    global.msg[22]= "AND^1, NO ONE GOES&HUNGRY!!!/";
    global.msg[23]= "BECAUSE I COOK&EVERYONE&SPAGHETTI./";
    global.msg[24]= "\\\\E3MEANWHILE^1, MY&BROTHER HANDLES&THE PAPERWORK./";
    global.msg[25]= "\\\\E3STRANGELY..^1.&HE SEEMS TO BE&WORKING HARD?/";
    global.msg[26]= "\\\\E3THIS SOUNDS MESSED&UP..^1. BUT.../";
    global.msg[27]= "\\\\E5I\\'M PROUD..^1.&OF HIM???/";
    global.msg[28]= "OH NO!!!!/";
    global.msg[29]= "\\\\E0AS FOR OUR HUMAN&POLICY.../";
    global.msg[30]= "\\\\E3WE\\'VE DECIDED^1, UM./";
    global.msg[31]= "SANS^1, WHAT WAS IT?/";
    scr_sansface(32, 2);
    global.msg[33]= "\\\\E2* we can\\'t judge&  humans to be all&  good or all bad./";
    scr_papface(34, 0);
    global.msg[35]= "\\\\E0RIGHT^1!&SO IT\\'S CASE-BY-&CASE!/";
    global.msg[36]= "IF THEY\\'RE EVIL..^1.&WE GIVE THEM&PUZZLES!/";
    global.msg[37]= "IF THEY\\'RE GOOD..^1.&WE ALSO GIVE&THEM PUZZLES!/";
    global.msg[38]= "THAT SEEMS TO BE&THE BEST WAY!/";
    global.msg[39]= "\\\\E0.../";
    global.msg[40]= "\\\\E3.../";
    global.msg[41]= "IS SANS GONE?/";
    global.msg[42]= "\\\\E6YOU KNOW.../";
    global.msg[43]= "DON\\'T TELL MY&BROTHER, BUT.../";
    global.msg[44]= "DESPITE THE&IMPROVEMENTS&WE\\'VE MADE.../";
    global.msg[45]= "SOMETIMES THIS JOB&IS KIND OF HARD./";
    global.msg[46]= "SINCE THE KING&WENT AWAY.../";
    global.msg[47]= "LOTS OF PEOPLE&JUST WANT TO&GIVE UP./";
    global.msg[48]= "SOMETIMES, EVEN MY&BEST&ENCOURAGEMENT.../";
    global.msg[49]= "DOESN\\'T WORK./";
    global.msg[50]= "AND^1, AND^1, I MISS&UNDYNE^1, TOO./";
    global.msg[51]= "SHE NEVER ANSWERS&MY PHONE CALLS.../";
    global.msg[52]= "\\\\E5SHE MUST BE& HAVING A LOT OF&FUN ON VACATION./";
    global.msg[53]= "\\\\E6I JUST WISH SHE\\'D&SEND A POSTCARD./";
    global.msg[54]= ".../";
    global.msg[55]= "\\\\E5BUT HEY!!!/";
    global.msg[56]= "\\\\E4I WON\\'T GIVE UP!/";
    global.msg[57]= "I CAN\\'T GIVE UP!/";
    global.msg[58]= "I HAVE TO MAKE&EVERYONE GIVE UP&GIVING UP!/";
    global.msg[59]= "\\\\E0WE\\'LL GET OUT&OF HERE^1, SLOWLY!!!/";
    global.msg[60]= "THEN WE CAN ALL&HANG OUT AGAIN!!!/";
    global.msg[61]= "\\\\E0NYEH HEH HEH!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 8;
}
if(con == 61) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.msg[0]= "\\\\E3* it\\'s been a while^1,&  huh?/";
    global.msg[1]= "* .../";
    global.msg[2]= "* things have gotten&  pretty bad here./";
    global.msg[3]= "\\\\E0* everyone considered a&  leader disappeared&  overnight./";
    global.msg[4]= "\\\\E1* it\\'s gotten so quiet./";
    global.msg[5]= "\\\\E3* there\\'s a bad feeling&  hanging over&  everyone./";
    global.msg[6]= "* like everyone\\'s just&  going to die here^1,&  trapped in the dark.../";
    global.msg[7]= "\\\\E2* ... i bet you\\'re&  wondering why i\\'m&  not the ruler./";
    global.msg[8]= "\\\\E1* eh./";
    global.msg[9]= "\\\\E1* i\\'m not cut out&  for something like&  that./";
    global.msg[10]= "\\\\E2* i like to take it&  easy^1, you know?/";
    global.msg[11]= "\\\\E2* .../";
    global.msg[12]= "\\\\E3* ... that\\'s a joke./";
    global.msg[13]= "\\\\E3* this is what happens&  when people like me&  take it easy./";
    global.msg[14]= "* .../";
    global.msg[15]= "\\\\E4* see ya./%%";
    if(global.kills >= 20) {
        global.msg[15]= "\\\\E0* hey^1, at least things&  are less crowded./";
        global.msg[16]= "\\\\E1* \\'cause of all the&  people you killed./";
        global.msg[17]= "\\\\E2* hope that was a good&  experience for you./";
        global.msg[18]= "\\\\E3* .../";
        global.msg[19]= "\\\\E2* just kidding^1.&* i don\\'t really hope&  that./";
        global.msg[20]= "\\\\E4* go to hell./%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 8;
}
if(con == 71) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.msg[0]= "\\\\E3* it\\'s been a while^1,&  huh?/";
    global.msg[1]= "* .../";
    global.msg[2]= "\\\\E1* it seems a number of&  important people&  disappeared overnight./";
    global.msg[3]= "* but no one else was&  harmed./";
    global.msg[4]= "\\\\E0* the people were&  confused^1.&* it was complete bedlam./";
    global.msg[5]= "\\\\E3* somehow^1, at the end of&  the day.../";
    global.msg[6]= "\\\\E1* a small^1, white dog&  became president of&  the underground./";
    global.msg[7]= "\\\\E0* it sleeps on the&  throne and does&  absolutely nothing./";
    global.msg[8]= "\\\\E1* strangely^1, it seems&  this is the best&  life for everyone./";
    global.msg[9]= "\\\\E2* thanks./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 8;
}
if(con == 81) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.msg[0]= "\\\\E3* it\\'s been a while^1,&  huh?/";
    global.msg[1]= "* .../";
    global.msg[2]= "\\\\E1* i\\'ll be honest./";
    global.msg[3]= "\\\\E2* i have no idea what&  happened for you&  to get here./";
    global.msg[4]= "\\\\E1* this is actually some&  sort of error-&  handling message./";
    global.msg[5]= "\\\\E3* so^1, if you\\'re getting&  this ending.../";
    global.msg[6]= "\\\\E1* tell whoever made the&  game^1, okay?/";
    global.msg[7]= "\\\\E2* they\\'ll fix it^1, or&  if it\\'s a novel&  situation.../";
    global.msg[8]= "\\\\E1* they might even add&  another ending to&  the game./";
    global.msg[9]= "\\\\E3* chances are^1, though.../";
    global.msg[10]= "\\\\E4* you\\'re just a dirty&  hacker^1, aren\\'t you?/";
    global.msg[11]= "\\\\E1* yeah^1, get outta here./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 8;
}
if(con == 91) {
    global.typer= 47;
    global.flag[430]= 4;
    global.facechoice= 6;
    global.faceemotion= 0;
    global.msg[0]= "\\\\E1* H..^1. hey./";
    global.msg[1]= "\\\\E0* So..^1. you\\'re the one&  who killed all my&  friends./";
    global.msg[2]= "\\\\E1* I just called to tell&  you./";
    global.msg[3]= "\\\\E0* I hate you./";
    global.msg[4]= "\\\\E1* Yet..^1. strangely..^1.&* It\\'s because of you^1,&  that.../";
    global.msg[5]= "\\\\E2* That I was forced to&  become a better&  person./";
    global.msg[6]= "\\\\E0* When I first saw you&  hurting people.../";
    global.msg[7]= "* I just sat there^1.&* Watching you./";
    global.msg[8]= "\\\\E1* I felt so guilty knowing&  I hadn\\'t do anything&  to stop you./";
    global.msg[9]= "\\\\E3* I felt like all I&  do was.../";
    global.msg[10]= "\\\\E4* Was hope you would&  destroy me^1, too./";
    global.msg[11]= "\\\\E1* But when Undyne called^1,&  with crazed desperation&  in her voice.../";
    global.msg[12]= "\\\\E0* I..^1.&* I realized I had to do&  something./";
    global.msg[13]= "\\\\E1* Even if it meant&  everybody would.../";
    global.msg[14]= "* Have to learn the&  truth about me./";
    global.msg[15]= "\\\\E2* It\\'s strange^1.&* You know?/";
    global.msg[16]= "\\\\E5* Even after all the&  bad things I did./";
    global.msg[17]= "* People treated me like&  a hero./";
    global.msg[18]= "\\\\E2* And then they..^1.&* Asked me to run&  everything./";
    global.msg[19]= "\\\\E5* So I\\'m trying my&  best^1, here./";
    global.msg[20]= "\\\\E2* I think I have some&  good policies^1, but^1,&  y-you know.../";
    global.msg[21]= "\\\\E1* Talking to people&  still makes me&  nervous./";
    global.msg[22]= "\\\\E0* I\\'m no ASGORE^1,&  you know?/";
    global.msg[23]= "\\\\E2* .../";
    global.msg[24]= "\\\\E4* God..^1.&* I miss everyone./";
    global.msg[25]= "\\\\E3* Now that they\\'re&  gone^1, it.../";
    global.msg[26]= "* It feels so clear what&  I should have done./";
    global.msg[27]= "\\\\E3* What I should have&  said./";
    global.msg[28]= "\\\\E6* Undyne..^1.&* Asgore.../";
    global.msg[29]= "* Mettaton.../";
    global.msg[30]= "\\\\E5* At least Sans is&  still here./";
    global.msg[31]= "\\\\E4* He\\'s..^1.&* He\\'s a good guy^1.&* And with him around.../";
    global.msg[32]= "\\\\E4* I.../";
    global.msg[33]= "\\\\E2* Sigh./";
    global.msg[34]= "\\\\E1* You know^1.&* Just daydreaming here^1.&* But.../";
    global.msg[35]= "\\\\E5* I really should have&  killed you when I&  had the chance./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 8;
}


/*  */
