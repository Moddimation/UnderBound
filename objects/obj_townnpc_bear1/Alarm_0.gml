myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* This town doesn\\'t have a&  mayor./";
global.msg[1]= "* But if there\\'s ever a problem^1,&  a skeleton will tell a fish&  lady about it./";
global.msg[2]= "* Thaaaaaat\\'s politics!/%%";
if(talkedto > 0) global.msg[0]= "* Politics./%%";
if(global.plot >= 122) {
    global.msg[0]= "* What if I ran for mayor...?/";
    global.msg[1]= "* I don\\'t think I would do&  a good job^1, and I hate&  responsibility.../";
    global.msg[2]= "* But I love politics^1.&* So I might be a perfect&  match./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* I heard Dr. Alphys told&  the king and queen the&  awful things she\\'d done./";
    global.msg[1]= "* The king felt so bad&  that he didn\\'t know^1.&* He gave her a big hug./";
    global.msg[2]= "* Then the queen fired her./";
    global.msg[3]= "* Now we don\\'t have a Royal&  Scientist anymore.../";
    global.msg[4]= "* Thaaaaat\\'s politics!/%%";
    if(talkedto > 0)
        global.msg[0]= "* Too bad there are no&  politics on the surface./%%";
}
if(global.flag[67] == 1) {
    global.msg[0]= "* Hmmm^1, usually that skeleton&  goes to meet with Undyne&  about now./";
    global.msg[1]= "* Where is he...^1?&* I can feel our political&  system crumbling apart.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
