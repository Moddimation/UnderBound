myinteract= 3;
global.msc= 0;
if(global.flag[191] == 0) {
    global.msg[0]= "* Hello^1, Frisk^1.&* Alphys upgraded my&  phone./";
    global.msg[1]= "* I am having a lot&  of fun with the&  " + chr(ord("\"")) + "texting" + chr(ord("\"")) + " feature./";
    global.msg[2]= "* Sans^1, " + chr(ord("\"")) + "check out" + chr(ord("\"")) + " this&  one./";
    scr_sansface(3, 0);
    global.msg[4]= "* oh man^1, tori.../";
    global.msg[5]= "\\\\E1* that\\'s brutal./";
    scr_papface(6, 0);
    global.msg[7]= "I CAN\\'T BELIEVE&THE QUEEN HAS&RETURNED.../";
    global.msg[8]= "\\\\E4AND ALSO THAT&SHE\\'S A HUGE&DORK!!!/";
    global.msg[9]= "YOU TWO ARE TWO&FEET AWAY FROM&EACH OTHER!!!/";
    global.msg[10]= "WHY ARE YOU&TEXTING!!!/";
    scr_torface(11, 0);
    global.msg[12]= "* Worry not^1, Papyrus^1.&* We are texting for&  a good reason./";
    scr_papface(13, 3);
    global.msg[14]= "WHY IS THAT./";
    scr_sansface(15, 0);
    global.msg[16]= "* well./";
    global.msg[17]= "\\\\E2* cause we\\'re huge&  dorks./";
    scr_torface(18, 1);
    global.msg[19]= "* Sans^1, please do&  not say that./";
    global.msg[20]= "* You are not a dork./";
    global.msg[21]= "\\\\E0* You are more of&  a bonehead!/";
    scr_papface(22, 0);
    global.msg[23]= "HAHAHA^1, WOW!/";
    global.msg[24]= "\\\\E0THOSE PUNS ARE&EVEN LESS FUNNY&COMING FROM HER!/";
    scr_sansface(25, 1);
    global.msg[26]= "* then why are you&  smiling?/";
    scr_papface(27, 4);
    global.msg[28]= "IT\\'S A PITY&SMILE!!!/%%";
}
if(global.flag[191] == 1) {
    global.msg[0]= "* Frisk^1, do not feel&  left out./";
    global.msg[1]= "* I have been writing&  messages to you as&  well!/";
    global.msg[2]= "\\\\W* You still have \\\\Ymy&  phone number\\\\W after&  all this time.../";
    global.msg[3]= "* Do you not?/%%";
}
if(global.flag[191] >= 2) {
    global.msg[0]= "* Frisk^1, how about&  you go look around&  before we all go?/";
    global.msg[1]= "* Seeing how many good&  friends you\\'ve made&  here.../";
    global.msg[2]= "* I am almost certain&  you must have made&  some more./%%";
}
global.flag[191]++;
global.typer= 4;
global.facechoice= 1;
global.faceemotion= 0;
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
