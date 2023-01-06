myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (We\\'re sentries^1, but we never&  get any respect.)/";
global.msg[1]= "* (I wish those skeletons would&  throw us a bone.)/";
global.msg[2]= "* (We love bones.)/%%";
if(global.flag[67] == 1)
    global.msg[0]= "* (Where are those skeletons?^1)&* (I wanted to get a bone&  from them...)/%%";
if(global.plot >= 122) {
    global.msg[0]= "* (We\\'re considering paying a&  visit to the doctor.)/";
    global.msg[1]= "* (No^1! Not the vet!^1)&* (... well^1, maybe she\\'s a&  little like a vet.)/%%";
}
if(sansmode == 1) {
    global.msg[0]= "* (I like Sans.^1)&* (Sometimes he feeds us scraps&  of food under the table.)/";
    global.msg[1]= "* (Then his brother gets mad...^1)&* (But why!^1? We\\'re adults!^1)&* (We can handle it!)/%%";
}
if(global.flag[52] == 1)
    global.msg[0]= "* (Where\\'s Doggo?^1)&* (I hope he didn\\'t get&  lost again.)/%%";
if(global.flag[52] == 1 && global.flag[54] == 1)
    global.msg[0]= "* (It\\'s lonely in here today.^1)&* (If our friends don\\'t show up^1,&  would you like to play?)/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* (All of our parents have&  been combined into one&  horrible being.)/";
    global.msg[1]= "* (That\\'s OK^1, though.^1)&* (It\\'s really " + chr(ord("\"")) + "brought our&  families together." + chr(ord("\"")) + ")/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
