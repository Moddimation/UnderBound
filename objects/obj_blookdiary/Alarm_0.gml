myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
if(x > 60) {
    global.msg[0]= "* Dear Diary^1:&* Shyren\\'s sister " + chr(ord("\"")) + "fell down" + chr(ord("\"")) + "&  recently./";
    global.msg[1]= "* It\\'s sad^1.&* Without her sister to&  speak for her.../";
    global.msg[2]= "* She\\'s become more&  reclusive than ever./";
    global.msg[3]= "* So I reached out to her^1,&  and told her.../";
    global.msg[4]= "* That she^1, Blooky^1, and I&  should all perform together&  sometime./";
    global.msg[5]= "* She seemed to like&  that idea./%%";
}
if(x > 95) {
    global.msg[0]= "* Dearer Diary^1:&* I like to buy a new diary&  for every entry I make./";
    global.msg[1]= "* I love to collect diaries./%%";
}
if(x > 120) {
    global.msg[0]= "* Dearest Diary^1:&* Our cousin left the farm&  to become a training dummy./";
    global.msg[1]= "* That leaves just Blooky&  and I./";
    global.msg[2]= "* Blooky asked me if I was&  going to try to become&  corporeal^1, too./";
    global.msg[3]= "* They sounded so..^1.&* Resigned.../";
    global.msg[4]= "* Come on^1, Blooky^1.&* You know I\\'d never leave&  you behind./";
    global.msg[5]= "* And besides.../";
    global.msg[6]= "* I\\'d never find the kind&  of body I\\'m looking for^1,&  anyway./%%";
}
if(x > 145) {
    global.msg[0]= "* My Darling Diary^1:&* I met someone..^1.&* Interesting today./";
    global.msg[1]= "* Last week I posted that&  advertisement for my&  Human Fanclub./";
    global.msg[2]= "* Today was our first meeting./";
    global.msg[3]= "* Only one other person came./";
    global.msg[4]= "* Honestly^1, she\\'s a dork^1.&* And she\\'s obsessed with&  these awful cartoons./";
    global.msg[5]= "* But she\\'s kind of funny^1,&  too..../";
    global.msg[6]= "* I want to see her again./%%";
}
if(x > 170) {
    global.msg[0]= "* Diary... My dear:&* My diary collection is&  going fabulously./";
    global.msg[1]= "* I have like five now./%%";
}
if(x > 200) {
    global.msg[0]= "* Dear Diary^1:&* She surpised me with&  something today./";
    global.msg[1]= "* Sketches of a body that&  she wants to create for&  me.../";
    global.msg[2]= "* A form beyond my wildest&  fantasies./";
    global.msg[3]= "* In a form like that^1, I&  could finally feel&  like... " + chr(ord("\"")) + "my" + chr(ord("\"")) + "/";
    global.msg[4]= "* After all^1, there\\'s no&  way I can be a star&  the way I am now./";
    global.msg[5]= "* Sorry^1, Blooky^1.&* My dreams can\\'t wait&  for anyone.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
