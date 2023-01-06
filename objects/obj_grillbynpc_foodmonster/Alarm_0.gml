myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Hmmm..^1.&* Isn\\'t human food different&  from monster food?/";
global.msg[1]= "* It does things like " + chr(ord("\"")) + "spoil." + chr(ord("\"")) + "/";
global.msg[2]= "* And when you eat it^1, it&  passes all the way through&  your whole body./";
global.msg[3]= "* Disgusting./";
global.msg[4]= "* I\\'d love to try it sometime./%%";
if(talkedto > 0)
    global.msg[0]= "* And I\\'ve heard they have&  things called bathrooms./%%";
if(global.plot >= 122) {
    global.msg[0]= "* To a human^1, monster food&  would be very interesting./";
    global.msg[1]= "* As soon as you eat it^1, it&  converts perfectly into&  energy./";
    global.msg[2]= "* ... that makes me wonder^1.&* How do humans do it?/";
    global.msg[3]= "* Eat during battle...?/%%";
    if(talkedto > 0) {
        global.msg[0]= "* Ice cream in one hand^1,&  sword in the other./";
        global.msg[1]= "* That\\'s the way of the&  monster warrior.../%%";
    }
}
if(global.flag[67] == 1) {
    global.msg[0]= "* Hmmm^1, this is around the&  time that Sans comes in./";
    global.msg[1]= "* Then^1, a little bit later^1,&  his brother comes in^1,&  irritated./";
    global.msg[2]= "* Yes^1, his brother^1.&* Papyrus./";
    global.msg[3]= "* He\\'s an interesting fellow./";
    global.msg[4]= "* He always orders a glass of&  milk.../";
    global.msg[5]= "* He says it\\'s " + chr(ord("\"")) + "full of&  strong bones." + chr(ord("\"")) + "/%%";
    if(talkedto > 0) global.msg[0]= "* Hope he shows up today./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Soon^1, I\\'ll be able to try&  some human food.../";
    global.msg[1]= "* And then I guess I\\'ll try&  a human bathroom^1, too./%%";
}
if(sansmode == 1) {
    global.msg[0]= "* Sans is interesting^1.&* He has told me about all&  kinds of incredible foods./";
    global.msg[1]= "* But^1, despite his knowledge^1,&  he always orders the worst&  burger off the menu./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
