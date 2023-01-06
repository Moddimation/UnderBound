myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Beautiful^1.&* An error message./%%";
if(global.flag[58] == 0) {
    global.msg[0]= "* That look in your eye.../";
    global.msg[1]= "* You\\'re someone that has&  difficulty solving Junior&  Jumble^1, aren\\'t you?/%%";
}
if(global.flag[58] == 1) {
    global.msg[0]= "* That look in your eye.../";
    global.msg[1]= "* You\\'re someone that has&  trouble doing crosswords^1,&  aren\\'t you?/%%";
}
if(global.plot >= 122) {
    global.msg[0]= "* That look in your eye.../";
    global.msg[1]= "* You think Sudoku is just&  moderately challenging^1,&  don\\'t you?/%%";
}
if(global.flag[7] == 1) {
    if(global.flag[58] == 0) {
        global.msg[0]= "* The greatest struggle of&  my life is over.../";
        global.msg[1]= "* I just solved today\\'s&  Junior Jumble./%%";
    }
    if(global.flag[58] == 1) {
        global.msg[0]= "* The greatest struggle of&  my life is over.../";
        global.msg[1]= "* I just solved today\\'s&  crossword./%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
