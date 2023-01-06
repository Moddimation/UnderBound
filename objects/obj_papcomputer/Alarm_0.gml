myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrusparent )) {
    scr_papface(0, 0);
    global.msg[1]= "THE INTERNET^1!&I\\'M QUITE&POPULAR THERE./";
    global.msg[2]= "I\\'M JUST A&DOZEN AWAY.../";
    global.msg[3]= "FROM A DOUBLE&DIGIT FOLLOWER&COUNT!/";
    global.msg[4]= "\\\\E3OF COURSE^1, FAME&HAS A STEEP&PRICE./";
    global.msg[5]= "\\\\E1A JEALOUS TROLL&HAS BESIEGED MY&ONLINE PERSONA./";
    global.msg[6]= "ALWAYS SENDING&ME BAD PUNS IN&A GOOFY FONT.../%%/";
    if(read > 0)
        global.msg[0]= "* (The computer\\'s internet&  browser is opened to&  a social media site.)/%%";
} else 
    global.msg[0]= "* (The computer\\'s internet&  browser is opened to&  a social media site.)/%%";
if(room == 120)
    global.msg[0]= "* (The computer\\'s internet&  browser is opened to&  a music-sharing forum.)/%%";
if(room == 266) {
    global.msg[0]= "* (Looks like this dog makes&  a lot of bad posts&  on-line.)/";
    global.msg[1]= "* (Text to speech is on.)/";
    global.msg[2]= "* (Seems like the dog barks^1,&  and it translates to these&  bad posts.)/";
    global.msg[3]= "* (It doesn\\'t really know what&  it\\'s saying.)/";
    global.msg[4]= "* (Seems like most bad posts&  on-line^1, are actually this&  dog.)/";
    global.msg[5]= "* (Thinking about this...^1)&* (Brings you relief.)/%%";
}
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
