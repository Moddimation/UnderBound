myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (Piles of garbage.)&* (There are quite a few&  brands you recognize.)/%%";
if(talkedto == 1) global.msg[0]= "* (Just garbage.)/%%";
if(talkedto == 1 && global.flag[22] > 0)
    global.msg[0]= "* (There\\'s a pile of yellow names&  in the trash pile.)/%%";
if(talkedto == 2) global.msg[0]= "* (Garbage.)/%%";
if(talkedto == 3) global.msg[0]= "* (A trash heap.)/%%";
if(talkedto == 4)
    global.msg[0]= "* (Your persistent garbage&  habit shows no signs&  of payoff.)/%%";
if(talkedto == 5) global.msg[0]= "* (Trash.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
object_index.talkedto++;


/*  */
