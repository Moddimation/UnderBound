myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrusparent )) {
    scr_papface(0, 0);
    global.msg[1]= "THAT BOOK\\'S ONE&OF MY&FAVORITES./";
    global.msg[2]= "" + chr(ord("\"")) + "ADVANCED PUZZLE&CONSTRUCTION FOR&CRITICAL MINDS." + chr(ord("\"")) + "/";
    global.msg[3]= "THAT NEXT BOOK\\'S&ANOTHER ONE OF&MY FAVORITES./";
    global.msg[4]= "" + chr(ord("\"")) + "PEEK-A-BOO WITH&FLUFFY BUNNY." + chr(ord("\"")) + "/";
    global.msg[5]= "\\\\E3THE ENDING&ALWAYS GETS ME./%%";
    if(read > 0)
        global.msg[0]= "* (Complex manuals and&  children\\'s books.)/%%";
} else  {
    global.msg[0]= "* (The bookshelf is filled&  with complex tomes&  about puzzle creation.)/";
    global.msg[1]= "* (And children\\'s books.)/%%";
}
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
