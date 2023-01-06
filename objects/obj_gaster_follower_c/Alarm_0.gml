myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I understand why ASGORE&  waited so long to hire a&  new Royal Scientist./";
global.msg[1]= "* The previous one..^1.&* Dr. Gaster./";
global.msg[2]= "* His brilliance was&  irreplaceable./";
global.msg[3]= "* However^1, his life..^1.&* Was cut short./";
global.msg[4]= "* One day^1, his experiments&  went wrong^1, and.../%%";
if(talkedto >= 1) {
    global.msg[0]= "* Well^1, I needn\\'t gossip./";
    global.msg[1]= "* After all^1, it\\'s rude to&  talk about someone who\\'s&  listening./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
