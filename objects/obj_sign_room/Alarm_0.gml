myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(room == 20 || room == 170)
    global.msg[0]= "* Spider Bake Sale&* All proceeds go to real&  spiders./%%";
if(room == 12) {
    global.msg[0]= "1234567890123456789012345678901234567890/";
    global.msg[1]= "\\\\F1 %";
    global.msg[2]= "123456789012345678901234567890/";
    global.msg[3]= "\\\\Ts %";
    global.msg[4]= "123456789012345678901234567890/";
    global.msg[5]= "\\\\TP %";
    global.msg[6]= "123456789012345678901234567890/%%";
}
if(room == 220) {
    global.facechoice= 7;
    global.typer= 60;
    global.msg[0]= "* Test one./";
    global.msg[1]= "\\\\E1* Test two./";
    global.msg[2]= "\\\\E2* Test three./";
    global.msg[3]= "\\\\E3* Test four./%%";
}
if(room == 46) {
    global.msg[0]= "* (This is a box.)/";
    global.msg[1]= "* (You can put an item&  inside or take an item&  out.)/";
    global.msg[2]= "* (The same box will appear&  later^1, so don\\'t worry&  about coming back.)/";
    global.msg[3]= "* (Sincerely^1, a box lover.)/%%";
}
if(room == 49) global.msg[0]= "* (Absolutely NO MOVING!!!)/%%";
if(room == 50) {
    global.msg[0]= "* North: Ice&* South: Ice&* West: Ice/";
    global.msg[1]= "* East: Snowdin Town/";
    global.msg[2]= "* (... and ice)/%%";
}
if(room == 53) {
    global.msg[0]= "* North: Ice&* South: Ice&* West: Ice/";
    global.msg[1]= "* East: Snowdin Town/";
    global.msg[2]= "* (... and ice)/%%";
}
if(room == 54) {
    global.msg[0]= "* SMELL DANGER RATING/";
    global.msg[1]= "\\\\W* Snow Smell - Snowman&  WHITE Rating&  Can become \\\\YYELLOW\\\\W Rating/";
    global.msg[2]= "\\\\W* Unsuspicious Smell - Puppy&  \\\\BBLUE\\\\W Rating&  Smell of rolling around./";
    global.msg[3]= "\\\\W* Weird Smell - Humans&  \\\\RGREEN\\\\W Rating&  Destroy at all costs!/%%";
}
if(room == 57) {
    global.msg[0]= "* Warning:&  Dog Marriage/%%";
    if(talkedto == 1)
        global.msg[0]= "* (Yes^1, you read that correctly.)/%%";
}
if(room == 59 || room == 58)
    global.msg[0]= "* Turn every X into an O^1.&* Then press the switch./%%";
if(room == 61) global.msg[0]= "* AWARE OF DOG&* pleas pet dog/%%";
if(room == 66) global.msg[0]= "* (Woof.)/%%";
if(room == 63)
    global.msg[0]= "* (You will not slide on&  an X^1, O^1, or triangle.)/%%";
if(room == 84) {
    global.msg[0]= "* (This is a box.)/";
    global.msg[1]= "* (You can put an item in&  or take an item out.)/";
    global.msg[2]= "* (Why would you^1, though^1???)&* (You can\\'t use items&  when they\\'re in the box!)/";
    global.msg[3]= "* (Sincerely^1, a box hater.)/%%";
}
if(room == 86) {
    global.msg[0]= "* (This sign is written in&  very neat cursive.)/";
    global.msg[1]= "* Do not destroy the&  science grass./";
    global.msg[2]= "* It is used for science./%%";
}
if(room == 88) {
    global.msg[0]= "* Congratulations!/";
    global.msg[1]= "* You failed the puzzle!/%%";
}
if(room == 304)
    global.msg[0]= "* It\\'s a crystal^1.&* You\\'ve never seen one&  like this before./%%";
if(room == 105) global.msg[0]= "* (Please take one.)/%%";
if(room == 116)
    global.msg[0]= "* North: Blook Acres&* East: Hotland&* ???: Temmie Village/%%";
if(room == 122)
    global.msg[0]= "* (It\\'s a stable for snails.^1)&* (A snable.)/%%";
if(room == 130) {
    global.facechoice= 5;
    global.msg[0]= "* This is a damned test!/";
    global.msg[1]= "* 0^1. \\\\E1 1^1. \\\\E1 1^1.\\\\E2 1^1.\\\\E3 1^1.\\\\E4 1^1.\\\\E5 1^1.\\\\E6 1^1. \\\\E7 1^1.\\\\E8 1^1./%%";
}
if(room == 131)
    global.msg[0]= "* (Last chance to wish&  before Hotland^1.)&* (Careful of pollen.)/%%";
if(room == 118) global.msc= 706;
if(room == 138) {
    global.facechoice= 8;
    global.typer= 27;
    global.faceemotion= 0;
    global.msg[0]= "* B/";
    global.msg[1]= "\\\\E1* B/";
    global.msg[2]= "\\\\E2* B/";
    global.msg[3]= "\\\\E3* B/";
    global.msg[4]= "\\\\E4* B/";
    global.msg[5]= "\\\\E5* B/";
    global.msg[6]= "\\\\E6* B/";
    global.msg[7]= "\\\\E7* B/";
    global.msg[8]= "\\\\E8* B/";
    global.msg[9]= "\\\\E9* B/%%";
}
if(room == 68) {
    global.msg[0]= "* (Don\\'t want to walk to the&  other side of town?)/";
    global.msg[1]= "* (Try the undersnow tunnels^1!)&* (They\\'re efficiently laid out.)/%%";
}
if(room == 183) {
    global.msg[0]= "* East: Burgertown&* North: Cord&* West: Restraint/";
    global.msg[1]= "* This area\\'s not done so no&  fun is allowed here yet./";
    global.msg[2]= "* Signed, the Manmengent/%%";
}
if(room == 128) {
    global.msg[0]= "* hOI!^1!&* welcom to..^1.&* TEM VILLAGE!!!/%%";
    if(x > 270)
        global.msg[0]= "* hOI!^1!&* u shud check out..^1.&* TEM SHOP!!!/%%";
    if(x > 330)
        global.msg[0]= "* yaYA!^1! i AGREES!^1!&* shud check..^1.&* TEM SHOP!!!/%%";
}
if(room == 185) {
    global.msg[0]= "* Learning how to draw^1?&* Come to the Art Lessons on&  the second floor!/";
    global.msg[1]= "* Located in a similar place./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
