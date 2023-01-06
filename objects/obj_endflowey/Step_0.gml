if(con == 1) {
    ini_open("undertale.ini");
    AF= ini_read_real("Flowey", "AF", 0);
    AK= ini_read_real("Flowey", "AK", 0);
    NK= ini_read_real("Flowey", "NK", 0);
    IK= ini_read_real("Flowey", "IK", 0);
    CK= ini_read_real("Flowey", "CK", 0);
    CHANGE= ini_read_real("Flowey", "CHANGE", 0);
    EX= ini_read_real("Flowey", "EX", 0);
    truename= ini_read_real("Flowey", "truename", 0);
    ini_close();
    if(EX == 0) con= 100;
    if(EX == 1) con= 110;
    if(EX == 2) con= 120;
    if(EX == 3) con= 130;
    if(EX >= 4) con= 140;
    if(global.flag[476] == 1) global.kills++;
    if((NK > 0 || CHANGE > 0) && CHANGE < 2 && global.kills >= 1)
        con= 70;
    if(IK > 0 && CHANGE == 0 && global.kills == 0) con= 60;
    if(AK == 0 && IK > 0 && global.flag[476] == 1 && global.kills == 1)
        con= 30;
    if(NK == 0 && IK == 0 && global.kills >= 1) con= 50;
    if(NK == 0 && IK == 0 && global.flag[45] != 4 && global.flag[67] <= 0 && global.flag[350] != 1 && global.flag[425] == 0 && global.kills <= 0)
        con= 10;
    if(AF == 0 && global.flag[45] != 4 && global.flag[67] <= 0 && global.flag[350] != 1 && global.flag[425] == 0 && global.flag[389] >= 3 && global.flag[493] >= 10 && global.kills <= 0)
        con= 20;
    if(truename == 1) con= 80;
}
if(con == 10) {
    ini_open("undertale.ini");
    ini_write_real("Flowey", "NK", 1);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\E0Why...?/";
    global.msg[1]= "Why did you let me go? /";
    global.msg[2]= "\\\\E7Don\\'t you realize that&being nice.../";
    global.msg[3]= "\\\\E1... just makes you&get hurt?/";
    global.msg[4]= "\\\\E0Look at your/";
    global.msg[5]= "\\\\E9You made all these&great friends.../";
    global.msg[6]= "\\\\E0But now^1, you\\'ll probably&never see them again./";
    global.msg[7]= "\\\\E9Not to mention how&much they\\'ve been&set back by you./";
    global.msg[8]= "\\\\E6Hurts^1, doesn\\'t it?/";
    global.msg[9]= "\\\\E7If you had just gone&through without caring&about anyone.../";
    global.msg[10]= "\\\\E6You wouldn\\'t have to&feel bad now./";
    global.msg[11]= "\\\\E0So I don\\'t get it./";
    global.msg[12]= "\\\\E7If you really did&everything the right&way../";
    global.msg[13]= "\\\\E0Why did things still&end up like this?/";
    global.msg[14]= "\\\\E6Why...?/";
    global.msg[15]= "\\\\E5Is life really&that unfair?/";
    global.msg[16]= "\\\\E9.../";
    global.msg[17]= "\\\\E0Say./";
    global.msg[18]= "\\\\E9What if I told you.../";
    global.msg[19]= "\\\\E0I knew some way&to get you a better&ending?/";
    global.msg[20]= "\\\\E9You\\'ll have to load&your SAVE file, and.../";
    if(!file_exists("file0"))
        global.msg[20]= "\\\\E9You\\'ll have to&start over^1, and.../";
    if(global.flag[389] >= 3)
        global.msg[21]= "\\\\E0Well, in the meantime^1,&why don\\'t you go see&Dr. Alphys?/";
    else 
        global.msg[21]= "\\\\E0Well^1, in the meantime^1,&why don\\'t you go see&Undyne?/";
    if(global.flag[88] < 4)
        global.msg[21]= "\\\\E0Well^1, in the meantime^1,&why don\\'t you go see&Papyrus^1, then Undyne?/";
    global.msg[22]= "\\\\E9It seems like you&could have been&better friends./";
    global.msg[23]= "Who knows..^1. maybe&she\\'s got the key&to your happiness...?/";
    global.msg[24]= "\\\\E4See you soon./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 20) {
    ini_open("undertale.ini");
    ini_write_real("Flowey", "AF", 1);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "But^1, despite everything^1,&your happy ending&didn\\'t come./";
    global.msg[1]= "\\\\E5Why...?/";
    global.msg[2]= "\\\\E4I know why./";
    global.msg[3]= "\\\\E4Go to Dr. Alphys./";
    global.msg[4]= "\\\\E5Your date with her&has really just&begun./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 30) {
    ini_open("undertale.ini");
    ini_write_real("Flowey", "AK", 1);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "So you went the&whole way through&without killing.../";
    global.msg[1]= "\\\\E5And then you decided&to kill ASGORE?/";
    global.msg[2]= "\\\\E6What the hell is&WRONG with you?/";
    global.msg[3]= "\\\\E4You COMPLETELY missed&the point./";
    global.msg[4]= "\\\\E2Are you trolling me?/";
    global.msg[5]= "\\\\E0Because./";
    global.msg[6]= "\\\\E4No./";
    global.msg[7]= "\\\\E5You are only&trolling your/";
    global.msg[8]= "\\\\E6What a waste of&everybody\\'s time./";
    global.msg[9]= "\\\\E7All you had to&do was make friends./";
    global.msg[10]= "With Papyrus^1, Undyne^1,&and then Alphys./";
    global.msg[11]= "\\\\E2But you were too&busy messing it up!/%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 50) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "IK", 1);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "Hey./";
    global.msg[1]= "Since you defeated me./";
    global.msg[2]= "I\\'ve been thinking./";
    global.msg[3]= "\\\\E3Is killing things&really necessary?/";
    global.msg[4]= "\\\\E1I.../";
    global.msg[5]= "\\\\E3I honestly don\\'t&know anymore./";
    global.msg[6]= "\\\\E0I have a request&for you./";
    global.msg[7]= "\\\\E4Prove to me.../";
    global.msg[8]= "\\\\E5Prove to me you&are strong enough&to survive./";
    global.msg[9]= "\\\\E6Get here from&the beginning./";
    global.msg[10]= "\\\\E0Without killing a&single thing.../";
    if(global.flag[476] == 0)
        global.msg[11]= "\\\\E4... and I won\\'t&kill the king./";
    else  global.msg[11]= "\\\\E4... and^1, maybe.../";
    global.msg[12]= "\\\\E7Then you\\'ll have&your so-called&" + chr(ord("\"")) + "happy ending." + chr(ord("\"")) + "/";
    global.msg[13]= "\\\\E6So^1, what will&it be?/";
    global.msg[14]= "\\\\E5Will you prove&yourself?/";
    global.msg[15]= "\\\\E8Or will I get to&watch you suffer...?/";
    global.msg[16]= "Either way^1, I\\'m&interested!!!/";
    global.msg[17]= "\\\\E4Hee hee hee.../%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 60) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "CHANGE", 1);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "Interesting.../";
    global.msg[1]= "\\\\E6So^1, even with&everything you did.../";
    global.msg[2]= "\\\\E5The outcome\\'s still&the same./";
    global.msg[3]= "\\\\E9In the end^1, your&choices were an&illusion./";
    global.msg[4]= "\\\\E9NOTHING you do&really matters!/";
    global.msg[5]= "\\\\E8Hee hee hee!/";
    global.msg[6]= "\\\\E8.../";
    global.msg[7]= "\\\\E0Well./";
    global.msg[8]= "\\\\E6You DID do what&I told you./";
    global.msg[9]= "\\\\E5I guess it\\'s up&to me to get you a&REAL happy ending./";
    global.msg[10]= "\\\\E0For starters^1, you&can\\'t do it by&your/";
    global.msg[11]= "Papyrus^1, Undyne^1,&Alphys..^1. these guys./";
    global.msg[12]= "\\\\E4Are you friends with&all of them yet?/";
    global.msg[13]= "\\\\E5Maybe you should go&back and..^1. " + chr(ord("\"")) + "hang" + chr(ord("\"")) + "&with them./";
    global.msg[14]= "\\\\E4The power of&friendship.../";
    global.msg[15]= "That always saves&the day^1, right?/%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 70) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "CHANGE", 2);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\E0So^1, killing people&is ACTUALLY fine...?/";
    global.msg[1]= "\\\\E4Sure./";
    global.msg[2]= "I\\'m glad we agree on&the value of a life./";
    global.msg[3]= "I\\'ve learned SO&MUCH from you./";
    global.msg[4]= "\\\\E0Though..^1. are you&REALLY gonna keep&doing things halfway?/";
    global.msg[5]= "\\\\E8The amount of people&you killed.../";
    global.msg[6]= "\\\\E9It\\'s honestly&DISAPPOINTING./";
    global.msg[7]= "\\\\E8You IDIOT./";
    global.msg[8]= "\\\\E4You really can\\'t do&ANYTHING right./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 80) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "SPECIALK", 1);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "Why^1, " + global.charname + "...?/";
    global.msg[1]= "\\\\E3Why?/";
    global.msg[2]= "\\\\E1WHY?/";
    global.msg[3]= "\\\\E8We were on our way&to REAL victory.../";
    global.msg[4]= "\\\\E9On our way to making&up for LAST time!/";
    global.msg[5]= "\\\\E2Why\\'d you have to&SCREW IT UP?/";
    global.msg[6]= "\\\\E5Hahaha.../";
    global.msg[7]= "\\\\E9Is this REVENGE?/";
    if(global.kills <= 3)
        global.msg[8]= "\\\\E1Making me watch you&act so pure and&happy^1, while I...?/";
    else 
        global.msg[8]= "\\\\E1Making me watch you&live out your life^1,&while I...?/";
    global.msg[9]= "\\\\E1.../";
    global.msg[10]= "\\\\E7No./";
    global.msg[11]= "\\\\E8NO./";
    global.msg[12]= "I KNOW what you\\'re&doing./";
    global.msg[13]= "You just want to see&what it\\'s all like./";
    global.msg[14]= "Before we TEAR IT&AWAY from them./";
    global.msg[15]= "Ahahaha.../";
    global.msg[16]= "\\\\E9Genius^1, " + global.charname + "./";
    global.msg[17]= "\\\\E4Well^1, I\\'ll let you&mess around./";
    global.msg[18]= "\\\\E8I know you\\'ll come&back eventually./";
    global.msg[19]= "\\\\E9And when that time&comes.../";
    global.msg[20]= "\\\\E4" + global.charname + "./";
    global.msg[21]= "\\\\E4I\\'ll be waiting&for you./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 100) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "EX", 1);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "Why do you keep&coming back here?/";
    global.msg[1]= "\\\\E5Oh^1, I get it^1.&You wanna be friends^1,&huh...?/";
    global.msg[2]= "\\\\E8You\\'re PATHETIC./";
    global.msg[3]= "\\\\E8You REALLY think I&want to be friends&with YOU?/";
    global.msg[4]= "\\\\E5Heh.../";
    global.msg[5]= "\\\\E9You really DON\\'T&get it^1, do you?/";
    global.msg[6]= "\\\\E5There\\'s only one&person I could care&about anymore./";
    global.msg[7]= "\\\\E6And even then^1, I&couldn\\'t TRULY care&about them./";
    global.msg[8]= "\\\\E5I just like to think&there\\'s someone out&there.../";
    global.msg[9]= "Someone that I&won\\'t get tired of./";
    global.msg[10]= "\\\\E8Someone like ME./";
    global.msg[11]= "\\\\E8.../";
    global.msg[12]= "\\\\E0Say./";
    global.msg[13]= "\\\\E4Quit looking at me&with that stupid&expression./";
    global.msg[14]= "You\\'re pissing me&off./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 110) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "EX", 2);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\E0So you\\'re here&again./";
    global.msg[1]= "\\\\E2What\\'s wrong with&you?/";
    global.msg[2]= "\\\\E4Are you trying to&start the Flowey&Fan Club?/";
    global.msg[3]= "\\\\E5Because if you&want to join THAT.../";
    global.msg[4]= "\\\\E4You\\'ll have to&talk to Papyrus./";
    global.msg[5]= "\\\\E6Yeah^1, he started&one./";
    global.msg[6]= "\\\\E5A few different&times^1, anyway./";
    global.msg[7]= "\\\\E0I won\\'t lie./";
    global.msg[8]= "\\\\E4He\\'s one of the&better characters&to mess around with./";
    global.msg[9]= "\\\\E5Took me a long&time to get bored&of that one./";
    global.msg[10]= "\\\\E7... Yeah./";
    global.msg[11]= "\\\\E4Talk to him&about it./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 120) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "EX", 3);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\E0So./";
    global.msg[1]= "\\\\E4Did you start the&Flowey Fan Club?/";
    global.msg[2]= "\\\\E5Ha^1.&I\\'m just kidding./";
    global.msg[3]= "\\\\E9I was watching^1.&I know you didn\\'t./";
    global.msg[4]= "\\\\E5But I don\\'t care^1.&Really./";
    global.msg[5]= "\\\\E6He probably would&have invited his&garbage brother./";
    global.msg[6]= "\\\\E4You know^1.&Smiley Trashbag./";
    global.msg[7]= "\\\\E0.../";
    global.msg[8]= "\\\\E4Say./";
    global.msg[9]= "If I have ONE piece&of advice for you.../";
    global.msg[10]= "\\\\E9DON\\'T./";
    global.msg[11]= "Let his brother./";
    global.msg[12]= "Find out ANYTHING&about you./";
    global.msg[13]= "\\\\E6He\\'ll..^1. well.../";
    global.msg[14]= "\\\\E5Let\\'s just say./";
    global.msg[15]= "\\\\E9He\\'s caused me more&than my fair share&of resets./";
    global.msg[16]= "\\\\E4Stay away from&that guy./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 130) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "EX", 4);
    ini_close();
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\E0Why do you keep&coming back here?/";
    global.msg[1]= "You don\\'t REALLY&want to be friends^1,&do you...?/";
    global.msg[2]= ".../";
    global.msg[3]= "\\\\E4No^1. I get it./";
    global.msg[4]= "You\\'re just like me^1,&aren\\'t you?/";
    global.msg[5]= "You don\\'t care about&anyone./";
    global.msg[6]= "\\\\E4You\\'re just bored./";
    global.msg[7]= "You just want to&see what I\\'ll say./";
    global.msg[8]= "\\\\E5So you can laugh&and throw me away&like a broken toy./";
    global.msg[9]= "\\\\E8Well^1, TOO BAD!/";
    global.msg[10]= "\\\\E9I\\'m not LIKE everybody&else./";
    global.msg[11]= "\\\\E9So, from now on.../";
    global.msg[12]= "\\\\E4You\\'re not getting&ANYTHING./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 140) {
    facetype= 1;
    ini_open("undertale.ini");
    ini_write_real("Flowey", "EX", 5);
    ini_close();
    global.typer= 68;
    global.msc= 0;
    global.msg[0]= ".../";
    global.msg[1]= "\\\\E4Don\\'t you have&anything BETTER to do?/%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    flowey= 3;
    con= 3;
    alarm[4]= 100;
}
if(con == 4) room_goto(323);


/*  */
