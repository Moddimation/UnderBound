myinteract= 3;
global.msc= 0;
global.typer= 19;
global.facechoice= 4;
global.faceemotion= 0;
if(room == 59) {
    global.msg[0]= "MY BROTHER STARTED&A SOCK COLLECTION&RECENTLY./";
    global.msg[1]= "\\\\E3HOW SADDENING.../";
    global.msg[2]= "\\\\E0SOMETIMES I WONDER&WHAT HE WOULD&DO.../";
    global.msg[3]= "WITHOUT SUCH A&COOL GUY TAKING&CARE OF HIM???/";
    global.msg[4]= "NYEH HEH HEH!/%%";
    if(instance_exists(obj_papyrus5 ) && x > obj_papyrus5.x - 100) {
        sprite_index= dtsprite;
        global.msg[0]= "SO^1, YOU WANT&A HINT^1, HUH?/";
        global.msg[1]= "\\\\E3WELL..^1.&I\\'VE BEEN LOOKING&AT THE PUZZLE.../";
        global.msg[2]= "AND I THINK THE&SOLUTION.../";
        global.msg[3]= "\\\\E0IS TO TURN ALL&OF THE X\\'S INTO&O\\'S!/";
        global.msg[4]= "YOU SHOULD TRY&THAT!/";
        global.msg[5]= "ASK AGAIN FOR&MORE GREAT HINTS!/%%";
        if(talkedto == 1) {
            global.msg[0]= "\\\\WMAYBE SOLVING&THE \\\\YLAST PUZZLE\\\\W &AGAIN WILL HELP./";
            global.msg[1]= "ASK AGAIN FOR&MORE GREAT HINTS!!/%%";
        }
        if(talkedto == 2) global.msc= 692;
        if(talkedto > 2) global.msc= 694;
    }
}
if(room == 117) {
    dir= 1;
    d= 0;
    if(global.plot < 122) d= 1;
    if(global.flag[354] < 2) d= 1;
    if(global.flag[67] == 1) d= 1;
    if(global.flag[88] < 3) d= 1;
    if(global.flag[350] == 1) d= 1;
    if(global.flag[350] == 2) d= 1;
    if(global.kills > 0) d= 1;
    if(d == 1) {
        global.msg[0]= "Error, Pepibs./%%";
        if(global.kills > 0) {
            global.msg[0]= "I ASKED UNDYNE&IF WE COULD&ALL HANG.../";
            global.msg[1]= "\\\\E3BUT SHE SAID&SOMETHING WEIRD./";
            global.msg[2]= "\\\\E0SHE SAID SHE&WON\\'T HANG OUT&WITH A MURDERER./";
            global.msg[3]= "\\\\E3BUT..^1. HMM.../";
            global.msg[4]= "\\\\E5I DON\\'T REMEMBER&MURDERERING&ANYONE.../";
            global.msg[5]= "\\\\E3THOUGH I AM A&PRETTY BRUTAL&KIND OF GUY./";
            global.msg[6]= "\\\\E3THEN SHE SAID&SOMETHING ABOUT&WANTING TO.../";
            global.msg[7]= "\\\\E1FIGHT SOME KIND&OF BAD GUY./";
            global.msg[8]= "\\\\E3BUT SHE SEEMS&VERY..^1. WEAK&FROM SOMETHING./";
            global.msg[9]= "\\\\E5SHE STEPPED OUT&AND COLLAPSED IN&THE DOORWAY./";
            global.msg[10]= "\\\\E0SO I\\'M JUST&WAITING HERE IN&CASE SHE NEEDS ME./";
            global.msg[11]= "\\\\E3SINCE SHE HATES&BEING WAITED ON&HAND AND FOOT./";
            global.msg[12]= "\\\\E5I THINK WE\\'LL&HAVE TO HANG&OUT LATER.../%%";
            if(talkedto > 0) {
                global.msg[0]= "HEY^1, I.../";
                global.msg[1]= "\\\\E5REALLY DOUBT&WE\\'RE GOING TO&BE ABLE TO HANG./";
                global.msg[2]= "\\\\E3IT\\'S HARD TO&IMAGINE^1, BUT.../";
                global.msg[3]= "\\\\E0YOU\\'LL HAVE TO&SPEND TIME WITH&NOT ME./%%";
            }
        }
        if(global.flag[350] == 1) {
            global.msg[0]= "HEY^1! READY TO&HANG OUT WITH&UNDYNE???/";
            global.msg[1]= "GREAT!!^1!&ME TOO!!!/";
            global.msg[2]= "\\\\E3HOWEVER^1, SHE\\'S&NOT HERE./";
            global.msg[3]= "\\\\E0NORMALLY SHE&RETURNS AT ABOUT&THIS TIME./";
            global.msg[4]= "\\\\E3SHE\\'S LATE&THOUGH.../";
            global.msg[5]= "\\\\E3AND SHE\\'S NOT&ANSWERING HER&PHONE./";
            global.msg[6]= "\\\\E0HOW STRANGE./";
            global.msg[7]= "I\\'LL JUST WAIT&HERE UNTIL SHE&GETS HOME./";
            global.msg[8]= "I\\'LL CALL YOU&WHEN SHE GETS&HERE^1, OKAY!?/%%";
            if(talkedto > 0)
                global.msg[0]= "NOPE!^1!&SHE ISN\\'T HERE&YET!!!/%%";
        }
        if(global.flag[350] == 2) {
            global.msg[0]= "UNDYNE\\'S HOME^1,&BUT SHE ISN\\'T&FEELING WELL./";
            global.msg[1]= "\\\\E5I DON\\'T THINK WE&CAN HANG OUT./";
            global.msg[2]= "\\\\E3IT SEEMS LIKE SHE&CAUGHT HEAT-STROKE&OR SOMETHING./";
            global.msg[3]= "SOMEONE MUST HAVE&BROUGHT HER&BACK HOME.../";
            global.msg[4]= "\\\\E5BECAUSE SHE CAN&BARELY MOVE./";
            global.msg[5]= "\\\\E0BUT SHE IS&MUTTERING ABOUT&DESTROYING YOU./";
            global.msg[6]= "SO THAT\\'S A GOOD&VITAL SIGN./";
            global.msg[7]= "\\\\E3IN ANY CASE^1, I&DON\\'T THINK WE&CAN HANG OUT./";
            global.msg[8]= "\\\\E0I\\'M JUST WAITING&HERE IN CASE&SHE NEEDS ME./";
            global.msg[9]= "SO^1, I GUESS YOU&CAN RUN ALONG./%%";
            if(talkedto > 0)
                global.msg[0]= "UNDYNE IS SICK^1,&SO SHE CAN\\'T&PLAY TODAY./%%";
        }
        if(global.plot < 122) {
            global.msg[0]= "HEY^1! READY TO&HANG OUT WITH&UNDYNE???/";
            global.msg[1]= "GREAT!!^1!&BECAUSE SHE\\'S NOT&EVEN HERE./";
            global.msg[2]= "BEING READY EARLY^1!&IT SHOWS HOW MUCH&YOU CARE!!/";
            global.msg[3]= "\\\\E3EVEN IF SHE\\'S&NOT HERE TO SEE&THAT./%%";
            if(talkedto > 0)
                global.msg[0]= "NOPE!^1!&SHE ISN\\'T HERE&YET!!!/%%";
        }
    }
    if(d == 0) {
        global.msc= 698;
        if(talkedto > 0) global.msc= 700;
    }
}
if(room == 68) {
    global.msg[0]= "HELLO^1, MY FRIEND./";
    global.msg[1]= "WHAT BRINGS YOU&TO PAPYRUS TOWN?/%%";
    if(global.flag[354] == 0) {
        global.msg[0]= "HELLO..^1.&H-HOW ARE YOU^1,&MY F-FRIEND?/";
        global.msg[1]= "\\\\E5I\\'M FEELING VERY&NOT SUSPICIOUS&TODAY./%%";
    }
    if(global.flag[354] == 1) {
        global.msg[0]= "HEY^1, I HAVE A&GREAT IDEA./";
        global.msg[1]= "LET\\'S HANG OUT&WITH UNDYNE&LATER./";
        global.msg[2]= "I\\'LL CALL YOU&WHEN I\\'M READY!/%%";
    }
    if(instance_exists(obj_undyne_friendc )) {
        global.msg[0]= "I\\'M SO GLAD YOU&AND UNDYNE ARE&FRIENDS NOW./";
        global.msg[1]= "YOU TWO GO&TOGETHER LIKE&PASTA AND BURNING!/%%";
        if(global.plot > 175) {
            global.msg[0]= "OH^1, HEY.../";
            global.msg[1]= "\\\\E3YOU\\'RE LEAVING&SOON^1, RIGHT!?/";
            global.msg[2]= "\\\\E1DON\\'T COME HERE&TO SAY GOODBYE!!/";
            global.msg[3]= "\\\\E3GOODBYES AREN\\'T&ALLOWED IN MY&TOWN./";
            global.msg[4]= "\\\\E0JUST SEE-YOU-&LATERS./%%";
        }
        if(global.flag[493] == 8) {
            global.msg[0]= "IT SEEMS UNDYNE&HAS SOMETHING&FOR YOU./";
            global.msg[1]= "SHE\\'S THE PERSON&THAT\\'S NOT ME./%%";
        }
        if(global.flag[493] == 9) {
            global.msg[0]= "UNDYNE WRITES A&LOT OF LETTERS./";
            global.msg[1]= "\\\\E3BUT^1, SHE CAN NEVER&SEEM TO FIND THE&RIGHT WORDS./";
            global.msg[2]= "SO WHEN SHE GOES&TO DELIVER THEM&HERSELF.../";
            global.msg[3]= "SHE ALWAYS QUITS&SO SHE CAN GO&BACK AND REWRITE./";
            global.msg[4]= "\\\\E0THAT\\'S WHY SHE&ASKED YOU!!/";
            global.msg[5]= "BECAUSE YOU HAVE&NO STANDARDS!!!/%%";
        }
        if(global.flag[493] == 10) {
            global.msg[0]= "ALPHYS SEEMS TO&HAVE DISAPPEARED./";
            global.msg[1]= "DON\\'T WORRY^1, THAT\\'S&NORMAL./";
            global.msg[2]= "YOU SHOULD GO&TO HER LAB./";
            global.msg[3]= "I\\'M SUPPOSED TO&PUT THESE&NUMBERS TOGETHER./%%";
        }
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
