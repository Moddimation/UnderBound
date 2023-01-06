myinteract= 3;
global.msc= 0;
global.typer= 17;
global.facechoice= 3;
global.faceemotion= 0;
if(global.flag[192] == 0) {
    if(global.flag[41] > 0) {
        global.msg[0]= "* hey^1, frisk^1, what\\'s&  with that weird&  expression?/";
        scr_torface(1, 2);
        global.msg[2]= "\\\\E2* Sans^1, did I tell you&  about the time Frisk&  flirted with me...?/";
        if(global.flag[42] > 0)
            global.msg[3]= "\\\\E8* And then asked to&  call me " + chr(ord("\"")) + "mother?" + chr(ord("\"")) + "/";
        if(global.flag[42] == 0)
            global.msg[3]= "\\\\E0* I felt so embarrassed&  for them./";
        scr_sansface(4, 1);
        global.msg[5]= "\\\\E1* oh boy./";
        scr_papface(6, 3);
        global.msg[7]= "\\\\E3WOW^1, FRISK.../";
        global.msg[8]= "\\\\E0THIS REALLY PUTS&OUR RELATIONSHIP&IN A NEW LIGHT./";
        scr_sansface(9, 2);
        global.msg[10]= "\\\\E1* hey^1, tori^1, do you&  have any other&  embarrassing stories?/";
        scr_torface(11, 0);
        global.msg[12]= "\\\\E0* Oh^1, do I ever!/";
        global.msg[13]= "\\\\E1* But, I think that&  story is one of the&  most unbelievable./";
        global.msg[14]= "\\\\E0* It is hard to think&  anyone would want to&  flirt with me./";
        scr_alface(15, 0);
        global.msg[16]= "\\\\E0* Ehehe.../";
        global.msg[17]= "\\\\E7* Ehehehe.../";
        global.msg[18]= "\\\\E1* AHA^1! AHAHAH^1!&* HA!^1! HA!!!/";
        global.msg[19]= "\\\\E2* Oh^1, Toriel^1.&* You have NO idea./%%";
    }
    if(global.flag[41] == 0 && global.flag[42] > 0) {
        global.msg[0]= "\\\\E0* oh hey^1, what\\'s up^1,&  frisk?/";
        global.msg[1]= "\\\\E2* we were just talking&  about you./";
        global.msg[2]= "\\\\E1* apparently you asked&  to call tori " + chr(ord("\"")) + "mom" + chr(ord("\"")) + " right&  after meeting her?/";
        scr_torface(3, 1);
        global.msg[4]= "\\\\E1* Well^1, it was not&  RIGHT after./";
        global.msg[5]= "\\\\E0* It took a couple&  minutes./";
        scr_sansface(6, 1);
        global.msg[7]= "\\\\E0* frisk..^1.&* i gotta tell ya./";
        global.msg[8]= "\\\\E2* that\\'s^1, uh^1, not the&  best way to get&  to know someone./";
        scr_papface(9, 3);
        global.msg[10]= "\\\\E3IT\\'S NOT???/";
        scr_undface(11, 9);
        global.msg[12]= "\\\\E9* Papyrus^1, we\\'ve been&  over this./";
        scr_papface(13, 4);
        global.msg[14]= "\\\\E4WHATEVER^1, MOM!!!/";
        scr_undface(15, 1);
        global.msg[16]= "\\\\E1* Don\\'t talk back to&  me like that!/";
        global.msg[17]= "\\\\E6* Go to your room^1,&  Papyrus!/";
        scr_papface(18, 5);
        global.msg[19]= "\\\\E5OK^1, UNDYNE./";
        scr_undface(20, 1);
        global.msg[21]= "\\\\E1* Wait^1!&* Don\\'t ACTUALLY go&  to your room!!/";
        scr_papface(22, 7);
        global.msg[23]= "\\\\E7I\\'M GETTING MIXED&  MESSAGES HERE!!!/%%";
    }
    if(global.flag[41] == 0 && global.flag[42] == 0) {
        global.msg[0]= "\\\\E0* frisk^1, tori was telling&  me how she made&  b\\'scotch pie for you./";
        scr_torface(1, 0);
        global.msg[2]= "\\\\E0* Oh^1, I should bake it&  for everyone sometime!/";
        scr_asgface(3, 0);
        global.msg[4]= "* .../";
        scr_alface(5, 3);
        global.msg[6]= "\\\\E3* (O-oh^1, that sounds&  REALLY good.)/";
        scr_papface(7, 3);
        global.msg[8]= "\\\\E3COOKING???/";
        global.msg[9]= "\\\\E0CAN I HELP?/";
        scr_undface(10, 1);
        global.msg[11]= "* Wait a second!!!/";
        global.msg[12]= "\\\\E6* Can I help too!?/";
        scr_torface(13, 0);
        global.msg[14]= "\\\\E0* Certainly^1!&* It would be fun to&  cook together!/";
        scr_alface(15, 9);
        global.msg[16]= "\\\\E9* (On second thought^1,&  maybe I\\'ll o-order&  a pizza.)/%%";
    }
}
if(global.flag[192] >= 1) {
    global.msg[0]= "\\\\E0* sorry..^1.&* i don\\'t have time&  to talk^1, frisk./";
    global.msg[1]= "\\\\E1* i\\'m supposed to be&  working right now./";
    scr_papface(2, 4);
    global.msg[3]= "\\\\E4BUT YOU AREN\\'T&  WORKING!!!/";
    scr_sansface(4, 2);
    global.msg[5]= "\\\\E2* i know^1, and it\\'s&  taking all my&  concentration./%%";
}
global.flag[192]++;
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
