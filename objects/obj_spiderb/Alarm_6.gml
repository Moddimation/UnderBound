global.typer= 33;
blcontype= 1;
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "What is it,&deary?/%%";
if(talktime > 0) {
    if(talktime >= 9) global.msg[0]= ".../%%";
    if(talktime == 8) global.msg[0]= "No, no, it\\'s&time to go~/%%";
    if(talktime == 7)
        global.msg[0]= "...&well... maybe&ONE little&nibble~~/%%";
    if(talktime == 6) global.msg[0]= "Just kidding,&of course~/%%";
    if(talktime == 5)
        global.msg[0]= "If you don\\'t mind&being gobbled up~&Ahuhuhu~/%%";
    if(talktime == 4)
        global.msg[0]= "Ahuhuhuhu~&Well, I don\\'t&mind keeping&you here~/%%";
    if(talktime == 3)
        global.msg[0]= "Feeling comfortable&trapped in that&web?/%%";
    if(talktime == 2) global.msg[0]= "It\\'s time to go~/%%";
    if(talktime == 1) global.msg[0]= "Ahuhuhu~&What are you&doing~/%%";
    talktime++;
}
global.msg[1]= "%%%";
if(turnamt == 0)
    global.msg[0]= "Why so pale?&You should be proud~/%%";
if(turnamt == 1)
    global.msg[0]= "Proud that you\\'re&going to make a&delicious cake~&Ahuhuhu~/%%";
if(turnamt == 2) global.msg[0]= "Let you go^1?&Don\\'t be silly~/%%";
if(turnamt == 3) {
    global.msg[0]= "Your SOUL is going&to make every spider&very happy~~~/%%";
    if(murder == 1)
        global.msg[0]= "You\\'re scaring off&all my customers!/%%";
}
if(turnamt == 4) {
    global.msg[0]= "Oh, how rude of me!&I almost forgot&to introduce you&to my pet~/";
    global.msg[1]= "It\\'s breakfast time,&isn\\'t it?&Have fun, you two~ /%%";
}
if(turnamt == 5)
    global.msg[0]= "The person who warned&us about you.../%%";
if(turnamt == 6) {
    global.msg[0]= "Offered us a LOT of&money for your SOUL./%%";
    if(murder == 1) global.msg[0]= "Looked like a total&nerd./%%";
}
if(turnamt == 7) {
    global.msg[0]= "They had such a sweet&smile~ and... ahuhu~/%%";
    if(murder == 1)
        global.msg[0]= "She was very&adamant I run away&with her~~~&Ahuhuhu~~~/%%";
}
if(turnamt == 8) {
    global.msg[0]= "It\\'s strange, but&I swore I saw them&in the shadows...&Changing shape...?/%%";
    if(murder == 1)
        global.msg[0]= "She even left a&route for me to&escape from~/%%";
}
if(turnamt == 9)
    global.msg[0]= "Oh, it\\'s lunch time,&isn\\'t it?&And I forgot to&feed my pet~/%%";
if(turnamt == 10) {
    global.msg[0]= "With that money,&the spider clans&can finally be&reunited~/%%";
    if(murder == 1)
        global.msg[0]= "She said she would&block off the rest&of Hotland after I&followed her~/%%";
}
if(turnamt == 11) {
    global.msg[0]= "You haven\\'t heard?&Spiders have been&trapped in the RUINS&for generations!/%%";
    if(murder == 1)
        global.msg[0]= "Foolish nerd~&A spider NEVER leaves&her web~/";
    global.msg[1]= "(Except to sell&pastries~)/%%";
}
if(turnamt == 12) {
    global.msg[0]= "Even if they go&under the door,&Snowdin\\'s fatal cold&is impassable alone./%%";
    if(murder == 1)
        global.msg[0]= "Ah^1, but I do feel&a little regret&over it now.../%%";
}
if(turnamt == 13) {
    global.msg[0]= "But with the money&from your SOUL, we\\'ll&be able to rent&them a heated limo~/%%";
    if(murder == 1)
        global.msg[0]= "Yes^1, I should have&wrapped her up when&I had the chance~/%%";
}
if(turnamt == 14) {
    global.msg[0]= "And with all of&the leftovers...^1?&We could have a&nice vacation~/";
    global.msg[1]= "Or even build a&spider baseball&field~/%%";
    if(murder == 1)
        global.msg[0]= "She looked like she&would have made a&juicy donut~~~/%%";
}
if(turnamt == 15)
    global.msg[0]= "But enough of that...&It\\'s time for&dinner, isn\\'t it?&Ahuhuhu~/%%";
if(con == 0) global.msg[0]= "Don\\'t look so&blue^1, my deary~/%%";
if(blcontype == 0)
    blcon= instance_create(xstart + 105 + 60, ystart - 35, obj_blconsm );
if(blcontype == 1)
    blcon= instance_create(xstart + 110 + 60, ystart - 10, obj_blconwdflowey );
if(blcontype == 0)
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
if(blcontype == 1)
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
global.border= 21;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
blconactive= 1;
if(purpletime == 1) event_user(2);

/* */
/*  */
