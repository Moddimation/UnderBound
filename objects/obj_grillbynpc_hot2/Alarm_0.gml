myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Those dogs are part of&  the ROYAL GUARD^1, the elite&  military group led by UNDYNE./";
global.msg[1]= "* She\\'s rude^1, loud^1, and beats up&  everybody who gets in her&  way.../";
global.msg[2]= "* It\\'s no wonder all the kids&  want to be like her when&  they grow up!/%%";
if(talkedto > 0)
    global.msg[0]= "* I want to be like UNDYNE&  when I grow up^1, too^1!&* Hoo hoo hoo!/%%";
if(sansmode == 1) {
    global.msg[0]= "* Sans is a sentry^1.&* But don\\'t let his title make&  you think he does anything./";
    global.msg[1]= "\\\\W* Everyone knows he sits&  around in the forest&  reading \\\\Ycar magazines\\\\W./%%";
}
if(global.plot >= 122)
    global.msg[0]= "* Ehhhhhhhhnnnnn..^1.&* I wish I had something else&  to do./%%";
if(scr_deaddog()) {
    global.msg[0]= "* Those dogs are part of&  the ROYAL GUARD^1, the.../";
    global.msg[1]= "* Huh^1?&* Where are they?/";
    global.msg[2]= "* Something feels really off./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Wow^1, a brand new world.../";
    global.msg[1]= "* I might not get to&  translate for Grillby&  anymore.../";
    global.msg[2]= "* ... which is fine^1, since I&  was actually just making&  up what he was saying./%%";
}
if(global.flag[67] == 1) {
    global.msg[0]= "* Grillby is getting nervous./";
    global.msg[1]= "* Sans is his best customer^1,&  and he hasn\\'t shown up&  at all today.../%%";
}
if(global.flag[350] == 1) {
    global.msg[0]= "* Something feels really bad^1.&* Our lives are going nowhere^1,&  aren\\'t they...?/";
    global.msg[1]= "* I think I need another&  espresso.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
