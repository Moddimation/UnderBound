myinteract= 3;
global.msc= 0;
global.msg[0]= "* Ribbit^1, ribbit^1.&* (Excuse me^1, human.)/";
global.msg[1]= "* (I have some advice&  for you about battling&  monsters.)/";
global.msg[2]= "\\\\W* (If you \\\\YACT\\\\W a certain way&  or \\\\YFIGHT\\\\W until you&  almost defeat them...)/";
global.msg[3]= "* (They might not want to&  battle you anymore.)/";
global.msg[4]= "* (If a monster does not&  want to fight you^1, please...)/";
global.msg[5]= "\\\\W* (Use some \\\\YMERCY^1,\\\\W human.^1)&* Ribbit./%%";
if(global.flag[6] == 1) {
    global.msg[0]= "* Ribbit^1, ribbit^1.&* (Excuse me^1, human.)/";
    global.msg[1]= "* (I have some advice&  for you about battling&  monsters.)/";
    global.msg[2]= "* (The monsters in this world&  are very dangerous and&  aggressive.)/";
    global.msg[3]= "* (In this place^1, running away&  will not work on the&  first turn.)/";
    global.msg[4]= "* (It may be better to try&  another option.^1)&* Ribbit./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Ribbit^1, ribbit^1.&* (Excuse me^1, human.)/";
    global.msg[1]= "* (You seem like you have&  grown into a thoughtful and&  conscientious person.)/";
    global.msg[2]= "* (Whether that was from my&  advice or not...^1)&* (I\\'m quite proud.)/";
    global.msg[3]= "* Ribbit./%%";
}
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(room == 29) {
    global.msg[0]= "* Ribbit^1, ribbit^1.&* (Just between you and me...)/";
    global.msg[1]= "\\\\W* (I saw \\\\BTORIEL\\\\W come out of&  here just a little&  while ago.)/";
    global.msg[2]= "* (She was carrying some&  groceries.)/";
    global.msg[3]= "* (I didn\\'t ask what they&  were for...)/";
    global.msg[4]= "* (We\\'re all too intimidated&  to talk to her.^1)&* Ribbit./%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* Ribbit^1, ribbit^1.&* (Seems like the RUINS have&  finally opened up.)/";
        global.msg[1]= "* (Maybe we should finally&  go out to the rest of&  the underground.)/";
        global.msg[2]= "* (Huh^1? The barrier\\'s open^1,&  too...?)/";
        global.msg[3]= "* (... let\\'s just take this&  one step at a time^1, OK?)/%%";
    }
    if(global.flag[6] == 1) {
        global.msg[0]= "* Ribbit^1, ribbit^1.&* (Just between you and me...)/";
        global.msg[1]= "\\\\W* (I saw \\\\BTORIEL\\\\W come out of&  here just a little&  while ago.)/";
        global.msg[2]= "* (Normally^1, she carries&  groceries out of here.)/";
        global.msg[3]= "* (But this time^1, she wasn\\'t&  carrying anything.)/";
        global.msg[4]= "* (She looked disappointed.^1)&* Ribbit./%%";
    }
}
if(room == 21 && x > 300 && x < 400) {
    global.msc= 0;
    global.msg[0]= "* Ribbit ribbit^1.&* (I heard using " + chr(ord("\"")) + "F4" + chr(ord("\"")) + " can make&  you have a " + chr(ord("\"")) + "full screen." + chr(ord("\"")) + ")/";
    global.msg[1]= "* (But what does " + chr(ord("\"")) + "F4" + chr(ord("\"")) + " stand for?^1)&* (" + chr(ord("\"")) + "Four frogs" + chr(ord("\"")) + "?)/";
    global.msg[2]= "* (I have only seen a maximum of&  three frogs in this room...)/";
    global.msg[3]= "* (This is troubling^1, to say&  the least.^1)&* Ribbit./%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* Ribbit ribbit^1.&* (Did you ever find this&  room\\'s fourth frog?)/%%";
}
if(room == 21 && x > 400) {
    if(global.flag[22] == 0) global.msc= 748;
    if(global.flag[22] == 1) global.msc= 751;
    if(global.flag[22] == 2) global.msc= 753;
    if(global.flag[7] == 1) {
        global.msc= 0;
        if(global.flag[22] == 0) {
            global.msg[0]= "* Ribbit ribbit^1.&* (Yellow names were nice for&  a while.)/";
            global.msg[1]= "* (Next time^1, we should try a&  relaxing shade of green.)/%%";
        }
        if(global.flag[22] == 1) {
            global.msg[0]= "* Ribbit ribbit^1.&* (How was your adventure?)/";
            global.msg[1]= "* (It must have been difficult&  without being able to tell&  the enemy\\'s feelings.)/%%";
        }
        if(global.flag[22] == 2) {
            global.msg[0]= "* Ribbit ribbit^1.&* (Finally^1, we can all remove&  these aging pink names.)/";
            global.msg[1]= "* (Everyone gave you a big favor&  today.^1)&* (Try to respect that!)/%%";
        }
    }
}
if(!instance_exists(OBJ_WRITER )) {
    global.interact= 1;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
}

/* */
/*  */
