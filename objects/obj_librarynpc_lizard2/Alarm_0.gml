myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I love working on the&  newspaper./";
global.msg[1]= "* There\\'s so little to report&  that we just fill it with&  comics and games./%%";
if(global.plot >= 122) {
    global.msg[0]= "* Yes^1.&* I illustrate all of the&  comics my/";
    global.msg[1]= "* Yes^1.&* I give everyone huge beautiful&  eyes and giant muscles./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Oh my^1, there\\'s so much&  news to report^1, I don\\'t know&  where to begin!/";
    global.msg[1]= "* How about this headline..^1.&* " + chr(ord("\"")) + "Monsters Go Free From The&  Underground." + chr(ord("\"")) + "/";
    global.msg[2]= "* Nah^1, that doesn\\'t have&  enough pizazz.../";
    global.msg[3]= "* How about " + chr(ord("\"")) + "Top 10 Monsters&  You Won\\'t Believe Got Freed&  From The Underground?" + chr(ord("\"")) + "/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
