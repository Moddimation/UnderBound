myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.flag[55] == 0) {
    if(global.plot < 67) {
        global.msg[0]= "* That dog considers itself&  an artist^1, but doesn\\'t ever&  know what to create./";
        global.msg[1]= "* It probably doesn\\'t help&  that its brain is the size&  of a piece of kibble./%%";
    } else  {
        global.msg[0]= "* That dog from earlier...^1?&* It\\'s at Grillby\\'s^1.&* I think./";
        global.msg[1]= "* After work^1, all of the dogs&  go there to play cards&  together./";
        global.msg[2]= "* But that dog doesn\\'t really&  know how to express it/";
        global.msg[3]= "* So^1, it ends up playing alone^1,&  instead of introducing&  itself to the others.../%%";
    }
}
if(global.flag[55] == 2) {
    global.msg[0]= "* A dog just rushed in here^1,&  filled with inspiration./";
    global.msg[1]= "* It kept trying to build&  a snowdog that expressed&  its own emotions.../";
    global.msg[2]= "* But^1, as it built^1, it&  kept getting more excited&  about the sculpture.../";
    global.msg[3]= "* Its neck got longer and&  longer^1, and it added more&  and more snow^1, until.../";
    global.msg[4]= "* It was rather sad to watch^1,&  but I couldn\\'t turn away./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* We\\'re all free?/";
    global.msg[1]= "* OK^1, OK..^1.&* I\\'ll stop lounging around^1.&* Does that dog know?/";
    global.msg[2]= "* ... it probably doesn\\'t^1,&  does it...?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
