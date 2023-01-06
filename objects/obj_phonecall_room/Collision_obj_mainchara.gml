if(t == 0 && global.interact == 0) {
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    t= 1;
    if(room == 196 && global.plot < 185) {
        global.plot= 185;
        global.flag[416]= 1;
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
        global.msg[2]= "* OK^1!&* Y-you should..^1.&* You should.../";
        global.msg[3]= "* Head to the..^1.&* Head to the.../";
        global.msg[4]= "\\\\E9* I..^1. I.../";
        global.msg[3]= "\\\\E9* I don\\'t know?/";
        global.msg[4]= "\\\\E8* This doesn\\'t look&  like my map&  at all.../";
        global.msg[5]= "\\\\E9* I\\'m sorry..^1.&* I..^1. I.../";
        global.msg[6]= "\\\\E8* I have to go./";
        global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[8]= "* Click.../%%";
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 195 && global.plot < 183) {
        global.plot= 183;
        obj_powerlaser_event.con= 10;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 193 && global.flag[416] == 0 && x > 140) {
        global.flag[416]= 1;
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* W-wait^1!&* No^1, I think you&  should h-head up!/";
        global.msg[3]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[4]= "* Click.../%%";
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 193 && global.plot < 182 && x < 140) {
        global.plot= 182;
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* A crossroads..^1.&* Uhh.../";
        global.msg[3]= "* Uhhh.../";
        global.msg[4]= "\\\\E6* Tr..^1.&* Try heading to the&  right!/";
        global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[6]= "* Click.../%%";
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 192 && global.plot < 180) {
        global.plot= 180;
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* Looks like you can\\'t&  proceed until you&  hit the switch./";
        global.msg[3]= "* B-but^1, those lasers&  will activate when&  you do./";
        global.msg[4]= "\\\\E6* Ummm..^1.&* Looks like they\\'ll&  come in this order:/";
        global.msg[5]= "\\\\W* \\\\OOrange\\\\W. \\\\OOrange\\\\W. \\\\LBlue\\\\W./";
        global.msg[6]= "* G-got it^1?&* Move until the&  third one!/";
        global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[8]= "* Click.../%%";
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 190 && global.flag[415] == 0) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
        global.msg[2]= "* Alright^1, now just&  keep heading&  up!/";
        global.msg[3]= "\\\\E6* .../";
        global.msg[4]= "\\\\E3* ..^1.&* That pit..^1.&* Isn\\'t on my map./";
        global.msg[5]= "\\\\E6* Forget it^1!&* Let\\'s try the&  left side!/";
        global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[7]= "* Click.../%%";
        if(global.flag[414] == 0) {
            global.msg[0]= "* Ring.../";
            global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
            global.msg[2]= "* H-hey^1, aren\\'t&  you gonna use&  the elevator?/";
            global.msg[3]= "\\\\E6* I guess you can&  go this way!/";
            global.msg[4]= "\\\\E3* .../";
            global.msg[5]= "* If there wasn\\'t&  a huge pit in&  the way...?/";
            global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[7]= "* Click.../%%";
        }
        if(global.plot > 178) {
            global.msg[0]= "* Ring.../";
            global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
            global.msg[2]= "* Wh..^1. where\\'d this&  pit come from?/";
            global.msg[3]= "\\\\E8* You should be able&  to walk across&  here.../";
            global.msg[4]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[5]= "* Click.../%%";
        }
        global.flag[415]= 1;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 189 && global.plot < 177) {
        global.plot= 177;
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
        global.msg[2]= "* Ready^1?&* This is it!/";
        global.msg[3]= "* Take the elevator&  up to the top&  of the CORE!/";
        global.msg[4]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[5]= "* Click.../%%";
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 172) {
        if(global.flag[369] < 26) {
            global.flag[369]= 26;
            global.msc= 837;
            global.msg[0]= "* Ring.../%%";
            if(global.flag[367] == 1) donotcall= 1;
        } else  donotcall= 1;
    }
    if(room == 171) {
        if(global.plot < 163) {
            global.plot= 163;
            global.msg[0]= "* Ring.../";
            global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
            global.msg[2]= "* Hi^1, Alphys here!/";
            global.msg[3]= "* This room is like&  the room we saw&  before./";
            global.msg[4]= "* There are two puzzles&  to the north and&  south.../";
            global.msg[5]= "* You\\'ll have to solve&  them both to proceed!/";
            global.msg[6]= "\\\\E2* .../";
            global.msg[7]= "\\\\E0* A-also... I\\'d like&  to say!/";
            global.msg[8]= "\\\\E3* I don\\'t really...&* Like giving away&  puzzle solutions./";
            global.msg[9]= "\\\\E6* But if you need&  help^1, just call&  me^1, ok?/";
            global.msg[10]= "\\\\E3* Actually^1, wait^1, I&  have an idea!/";
            global.msg[11]= "\\\\E0* Let\\'s be friends&  on UnderNet!/";
            global.msg[12]= "\\\\E7* Then you can just&  ping me when you&  need help!/";
            global.msg[13]= "\\\\E0* .../";
            global.msg[14]= "\\\\E4* Wait^1, we\\'re already&  friends^1, aren\\'t we?/";
            global.msg[15]= "\\\\E5* I signed you up^1,&  didn\\'t I?/";
            global.msg[16]= "\\\\E5* You\\'ve been reading&  my posts the whole&  time.../";
            global.msg[17]= "\\\\E6* Well^1! I hope^1!&  You agree with me^1!&* About Mew Mew 2!/";
            global.msg[18]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[19]= "* Click.../%%";
            if(global.flag[367] == 1) donotcall= 1;
        } else  donotcall= 1;
    }
    if(room == 167) {
        if(global.plot < 162) {
            global.plot= 162;
            global.msc= 684;
            if(global.flag[367] == 1) donotcall= 1;
        } else  donotcall= 1;
    }
    if(room == 163) {
        if(global.plot < 143) {
            global.msc= 0;
            global.plot= 143;
            global.msg[0]= "* Ring.../";
            global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
            global.msg[2]= "* Uh^1, h-h-hey!/";
            global.msg[3]= "\\\\E0* I\\'m going to the&  bathroom^1, so I\\'ll&  be MIA for a bit./";
            global.msg[4]= "* I\\'m..^1. I\\'m sure you&  can handle this&  puzzle yourself!/";
            global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[6]= "* Click.../%%";
            if(global.flag[367] == 1) donotcall= 1;
        } else  donotcall= 1;
    }
    if(room == 155 && global.plot < 137) {
        if(global.plot < 137) {
            global.msc= 0;
            global.msg[0]= "* Ring.../";
            global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
            global.msg[2]= "* S-see that building in&  the distance?/";
            global.msg[3]= "\\\\E0* That\\'s the CORE^1.&* The source of all power&  for the underground./";
            global.msg[4]= "\\\\E6* It converts geothermal&  energy into magical&  electricity^1, by.../";
            global.msg[5]= "\\\\E3* Uhh^1, anyway^1, that\\'s&  where we\\'re going to&  go./";
            global.msg[6]= "\\\\E0* In the CORE is an&  elevator directly to&  ASGORE\\'s castle./";
            global.msg[7]= "\\\\E0* And from there..^1.&* You can go home./";
            global.msg[8]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[9]= "* Click.../%%";
            global.plot= 137;
        } else  donotcall= 1;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 153 && global.plot < 133.5) {
        global.plot= 133.5;
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* Uuuh^1, I think...&* Umm.../";
        global.msg[3]= "\\\\E6* Hey^1!&* About the puzzles on&  the left and right...!/";
        global.msg[4]= "\\\\E6* They\\'re a bit difficult&  to explain^1, but.../";
        global.msg[5]= "\\\\E4* ... uhhh^1, you already&  s-solved them?/";
        global.msg[6]= "\\\\E5* Awesome!/";
        global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[8]= "* Click.../%%";
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 149 && global.flag[373] == 0) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* Alphys^1! Here!/";
        global.msg[3]= "\\\\E6* Th-that blue laser&  seems totally&  impassable!/";
        global.msg[4]= "\\\\E3* B-b-but!/";
        global.msg[5]= "\\\\E6* As the Royal Scientist^1,&  I h-have some tricks&  up my sleeve!/";
        global.msg[6]= "* I\\'ll h-hack into th-the&  Hotland laser database&  and take it out!/";
        global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[8]= "* Click.../%%";
        if(global.flag[372] == 1) {
            global.msg[0]= "* Ring.../";
            global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
            global.msg[2]= "* A-another laser^1,&  huh?/";
            global.msg[3]= "\\\\E8* I\\'m sorry^1, I won\\'t&  play around this&  time./";
            global.msg[4]= "\\\\E6* Hold on a second!!/";
            global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[6]= "* Click.../%%";
        }
        global.flag[373]= 1;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 148 && global.plot < 132) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E0 \\\\F6 \\\\TA %";
        global.msg[2]= "\\\\E0* Your next location&  is that door up&  north./";
        global.msg[3]= "* But^1! It\\'s locked by&  two switched to the&  east and west./";
        global.msg[4]= "* So!!^1!&* Head to those rooms&  first!!!/";
        global.msg[5]= "\\\\E6* I.M.O!!!!/";
        global.msg[6]= "\\\\E1* .../";
        global.msg[7]= "\\\\E0* Acronyms kind of lose&  their punch out&  loud^1, huh?/";
        global.msg[8]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[9]= "* Click.../%%";
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
        global.msg[2]= "\\\\E6* A-A-Alphys here!!!!/";
        global.msg[3]= "\\\\E3* Th..^1. the northern door&  will stay locked until&  you.../";
        global.msg[4]= "* S-solve the puzzles on&  the right and left!/";
        global.msg[5]= "\\\\E0* I..^1. I think you&  sh-should g-g-go to the&  right first!/";
        global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[7]= "* Click.../%%";
        global.plot= 132;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 147 && global.plot < 131) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E4 \\\\F6 \\\\TA %";
        global.msg[2]= "\\\\E4* H..^1. h..^1. hi.../";
        global.msg[3]= "\\\\E0* It\\'s me..^1. Dr. Alphys..^1.&* I said I would&  guide you...?/";
        global.msg[4]= "\\\\E4* But^1, um^1, I\\'m not&  very good at talking&  on the phone./";
        global.msg[5]= "\\\\E0* Errrr^1, anyway!&* See those lasers?/";
        global.msg[6]= "* Try to remember your&  elementary bullet&  pattern class./";
        global.msg[7]= "\\\\W* \\\\OOrange attacks\\\\W can\\'t&  hurt you if you\\'re&  moving./";
        global.msg[8]= "\\\\W* \\\\LBlue attacks\\\\W can\\'t&  hurt you if you\\'re&  standing still./";
        global.msg[9]= "* These lasers are the&  same way!/";
        global.msg[10]= "\\\\E3* It\\'s^1, it\\'s sort of like&  that episode where&  they.../";
        global.msg[11]= "\\\\TS*\\\\E2 (Crash^1! Bang^1! Boom!)/";
        global.msg[12]= "\\\\TA*\\\\E4 Uhhhhh^1, gotta go^1!&* Talk to you later!/";
        global.msg[13]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[14]= "* Click.../%%";
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* Uhh^1!&* H-hi^1, so^1, the blue&  lasers.../";
        global.msg[3]= "\\\\E4* Uhh^1!&* I mean^1, Alphys here^1!&* Hi!/";
        global.msg[4]= "\\\\W*\\\\E6 The \\\\Lblue lasers\\\\W won\\'t&  hurt you if you don\\'t&  move!/";
        global.msg[5]= "\\\\W*\\\\E3 \\\\OO-orange\\\\W ones^1, um..^1.&* Y-you have to be&  moving^1, and they.../";
        global.msg[6]= "\\\\E4* Um^1, they won\\'t^1, um.../";
        global.msg[7]= "\\\\E6* Move through those&  ones!/";
        global.msg[8]= "\\\\E1* .../";
        global.msg[9]= "\\\\E5* Uhh^1, bye!/";
        global.msg[10]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[11]= "* Click.../%%";
        global.plot= 131;
        global.flag[462]= 0;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 145 && global.plot < 130) {
        global.msg[0]= "* Ring..^1. Ring.../";
        global.msg[1]= "* Click...?/";
        global.msg[2]= "* (Whoever was calling hung up&  before you answered it.)/%%";
        global.plot= 130;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(room == 88 && global.plot < 107) {
        global.msg[0]= " ";
        global.plot= 107;
        instance_create(40, 340, obj_stalkerflowey );
        global.msc= 553;
        if(global.flag[67] == 1) donotcall= 1;
    }
    if(room == 97 && global.flag[354] < 1) {
        global.msg[0]= " ";
        global.flag[354]= 1;
        instance_create(380, 40, obj_stalkerflowey );
        global.msc= 632;
        if(global.flag[67] == 1) donotcall= 1;
    }
    if(room == 136 && global.flag[354] < 2) {
        global.msg[0]= " ";
        global.flag[354]= 2;
        global.msc= 633;
        if(global.flag[67] == 1) donotcall= 1;
        if(instance_exists(obj_undynea_chaser ))
            obj_undynea_chaser.con= 20;
    }
    if(room == 115 && global.flag[493] == 10) {
        global.msg[0]= "* Ring.../";
        scr_papface(1, 0);
        global.msg[2]= "HOWDY!/";
        global.msg[3]= "IF IT ISN\\'T MY&GOOD FRIEND^1,&WHO TRUSTS ME./";
        global.msg[4]= "THIS IS PAPYRUS^1.&YOUR ALSO&MUTUAL FRIEND./";
        global.msg[5]= "\\\\E3ALPHYS AND I&FINISHED OUR&TRAINING EARLY./";
        global.msg[6]= "\\\\E5VERY EARLY./";
        global.msg[7]= "\\\\E3SO I SENT HER&HOME./";
        global.msg[8]= "\\\\E5VERY HOME./";
        global.msg[9]= "\\\\E3UH... NOW./";
        global.msg[10]= "\\\\E0I FEEL STRONGLY&AND FOR NO&APPARENT REASON./";
        global.msg[11]= "\\\\E3YOU SHOULD ALSO&GO..^1. THERE./";
        global.msg[12]= "\\\\E0TO HER^1.&LAB..^1. HOUSE./";
        global.msg[13]= "I HAVE ONLY&GOOD FEELINGS&ABOUT THIS./";
        global.msg[14]= "\\\\E5GOODBYE./";
        global.msg[15]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[16]= "* Click.../%%";
        if(global.flag[67] == 1) donotcall= 1;
        global.flag[492]= 0;
        global.flag[493]= 11;
    }
    if(room == 162 && global.plot < 139) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E4 \\\\F6 \\\\TA %";
        global.msg[2]= "\\\\E3* H..^1. hi...^1!&* It\\'s Dr. Alphys./";
        global.msg[3]= "\\\\E0* This p-puzzle is&  kinda..^1. um..^1. timing-&  based./";
        global.msg[4]= "\\\\E3* Y-you see those&  switches over there?/";
        global.msg[5]= "\\\\E0* Y-you\\'ll have to press&  all three of them&  within 3 seconds./";
        global.msg[6]= "\\\\E6* I\\'ll t-try to help&  you with the&  rhythm!/";
        global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[8]= "* Click.../%%";
        global.plot= 139;
        if(global.flag[367] == 1) donotcall= 1;
    }
    if(donotcall == 0) snd_play(snd_phone );
    if(donotcall == 0) {
        instance_create(0, 0, obj_dialoguer );
        global.interact= 1;
    }
}

/* */
/*  */
