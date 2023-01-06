myinteract= 3;
global.msc= 0;
global.typer= 37;
global.facechoice= 5;
global.faceemotion= 0;
if(global.flag[7] == 0) {
    global.msg[0]= "* Hey^1, punk^1!&* What\\'s up!?/";
    global.msg[1]= "\\\\E1* A-ACHOO!/";
    global.msg[2]= "\\\\E2* Papyrus^1, how can you&  stand this cold?/";
    scr_papface(3, 0);
    global.msg[4]= "I HAVE NO SKIN./";
    scr_undface(5, 9);
    global.msg[6]= "* So why don\\'t we&  stand in Grillby\\'s&  instead?/";
    scr_papface(7, 3);
    global.msg[8]= "BECAUSE I HATE&GREASE./";
    scr_undface(9, 2);
    global.msg[10]= "* But you don\\'t have&  a stomach!!/";
    scr_papface(11, 0);
    global.msg[12]= "NO^1, BUT I HAVE&STANDARDS!!!/%%";
    if(talkedto > 0) {
        global.msg[0]= "* Papyrus.../";
        global.msg[1]= "\\\\E1* Why do you live&  in an icy wasteland?/";
        scr_papface(2, 0);
        global.msg[3]= "THE RENT\\'S CHEAP./";
        scr_undface(4, 9);
        global.msg[5]= "* Really^1?&* Don\\'t you live in&  a huge house?/";
        scr_papface(6, 0);
        global.msg[7]= "YEAH^1, BUT MY&BROTHER PAYS&FOR IT./";
        scr_undface(8, 2);
        global.msg[9]= "* Where\\'s your brother&  get the money to&  pay for it...?/";
        scr_papface(10, 3);
        global.msg[11]= "OH^1, THAT\\'S SIMPLE./";
        global.msg[12]= "\\\\E0IT\\'S A MYSTERY./%%";
    }
    if(global.flag[493] == 9) {
        global.faceemotion= 1;
        global.msg[0]= "* So^1? What are you&  waiting for?/";
        global.msg[1]= "* The sooner you get&  it over with^1, the&  better!/%%";
        if(global.flag[494] == 1 || global.flag[494] == 2) {
            scr_itemget(57);
            if(noroom == 1) {
                global.faceemotion= 1;
                global.msg[0]= "* Hey^1, you sure&  are carrying a&  lot of things./";
                global.msg[1]= "* If someone needed&  to give you a thing^1,&  they sure couldn\\'t!/%%";
            } else  {
                global.faceemotion= 1;
                global.msg[0]= "* What^1?&* You LOST the letter!?/";
                global.msg[1]= "* What the HECK!^1?&* How!^1? Why!?/";
                global.msg[2]= "\\\\E7* Ughhh..^1.&* This is unbelievable./";
                global.msg[3]= "* I should be really&  disappointed in you./";
                global.msg[4]= "\\\\E9* But^1, uh^1, to tell&  you the truth^1, I\\'m&  kind of relieved!/";
                global.msg[5]= "\\\\E1* While you were gone^1,&  I actually wrote&  a WAY BETTER letter!/";
                global.msg[6]= "\\\\E6* And this time^1, you&  WON\\'T lose it!!!/";
                global.msg[7]= "\\\\E2* I guarantee it!!!/";
                global.msg[8]= "\\\\TS \\\\F0 \\\\T0 %";
                global.msg[9]= "* (You got the Undyne Letter&  EX.)/%%";
                global.flag[494]= 3;
            }
        }
    }
    if(global.flag[493] == 8) {
        scr_itemget(56);
        if(noroom == 1) {
            global.faceemotion= 9;
            global.msg[0]= "* Hey^1, I have something&  to give you.../";
            global.msg[1]= "\\\\E2* But you\\'re carrying&  way too much!!!/%%";
        } else  {
            global.faceemotion= 9;
            global.msg[0]= "* Um^1, so^1, I have a&  favor to ask you./";
            global.msg[1]= "\\\\E0* Uuuuh^1, I..^1.&* I need you to deliver&  this letter./";
            global.msg[2]= "\\\\E9* To Dr. Alphys./";
            global.msg[3]= "\\\\E1* Huh!^1?&* Why don\\'t I do it&  my..?/";
            global.msg[4]= "\\\\E8* ... um^1.&* W-well.../";
            global.msg[5]= "\\\\E9* I-it\\'s kind of&  personal^1, but we\\'re&  friends..^1. so.../";
            global.msg[6]= "\\\\E8* I\\'ll t-tell you.../";
            global.msg[7]= "\\\\E6* Hotland SUUUUCKS!!^1!&* I don\\'t wanna have&  to go over there!!!/";
            global.msg[8]= "\\\\E3* So here you go./";
            global.msg[9]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[10]= "* (You got the Undyne\\'s Letter.)/";
            scr_undface(11, 9);
            global.msg[12]= "* Oh^1, and if you&  read it.../";
            global.msg[13]= "\\\\E2* I\\'ll KILL you./";
            global.msg[14]= "\\\\E9* Thanks so much^1!&* You\\'re the best!!/%%";
            global.flag[493]= 9;
            global.flag[8]= 1;
        }
    }
}
if(global.flag[7] == 1) {
    if(global.flag[193] == 0) global.msc= 806;
    if(global.flag[193] == 1) {
        global.msg[0]= "* Hey^1, Alphys^1!&* Alphys!/";
        global.msg[1]= "\\\\E1* Do you think we&  can watch something&  with fighting next?/";
        global.msg[2]= "\\\\E9* Oh^1, and then...&* Something..^1.&* With princesses!?/";
        global.msg[3]= "\\\\E2* Or FIGHTING&  princesses!?/";
        scr_alface(4, 5);
        global.msg[5]= "\\\\E5* I-I\\'ll see if I&  can manage to find&  any like that^1, Undyne./";
        scr_undface(6, 6);
        global.msg[7]= "\\\\E6* Yayyyyy!/%%";
    }
    if(global.flag[193] >= 2) {
        global.msg[0]= "\\\\E0* Hey Frisk^1, why don\\'t&  you go say hi to&  Napstablook?/";
        global.msg[1]= "\\\\E1* Oh^1, tell them I&  said hi^1, too!/%%";
        if(global.flag[194] == 0) global.flag[194]= 1;
    }
    global.flag[193]++;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
