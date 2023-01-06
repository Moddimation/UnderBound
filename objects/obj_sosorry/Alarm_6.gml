goodot= 0;
global.msc= 0;
if(prevhp == global.monsterhp[myself]) {
    goodot= 1;
    if(p_mode == 0) myplot++;
} else  {
    goodot= 0;
    hitplot++;
}
prevhp= global.monsterhp[myself];
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "AHHHHHHH!!!!!/%%";
if(myplot == 5 && p_mode == 1 && goodot == 1) {
    global.flag[20]= 1;
    global.msg[0]= "\\\\E1AHHHHH!!!/%%";
}
if(hitplot == 1) {
    global.msg[0]= "\\\\E1Oh!&Whoops!&That hurt!/";
    global.msg[1]= "\\\\E2So sorry^1, I must&have gotten in the&way!/";
    global.msg[2]= "\\\\E1I really shouldn\\'t&stand so close/";
    global.msg[3]= "\\\\E4Ah I\\'m just being&troublesome/%%";
}
if(hitplot == 2) {
    global.msg[0]= "\\\\E4Darn it, I keep&getting in the way/";
    global.msg[1]= "\\\\E2So sorry, I\\'m such&an oaf/";
    global.msg[2]= "\\\\E2Wandering in front&of you.../%%";
}
if(hitplot == 3) {
    global.msg[0]= "\\\\E1.../";
    global.msg[1]= "Are you...&trying to KILL me?/";
    global.msg[2]= "\\\\E4... so sorry, but&I\\'ve had a really&tough year./";
    global.msg[3]= "I don\\'t know if I&could take you&killing me on top&of everything./";
    global.msg[4]= "\\\\E2You should find&someone else to&kill.&So sorry./%%";
}
if(hitplot == 4) {
    global.msg[0]= "\\\\E1?????/";
    global.msg[1]= "\\\\E5I just said I\\'m&not interested in&the offer!!/";
    global.msg[2]= "\\\\E5.../";
    global.msg[3]= "\\\\E2Sorry, I must not&have enunciated&clearly enough./";
    global.msg[4]= "\\\\E2I am not interested&in being killed.&Thank you very much./%%";
}
if(hitplot == 5) {
    global.msg[0]= "\\\\E5Look, stranger/";
    global.msg[1]= "\\\\E4I... I guess I\\'m&going to have to&tell the truth./";
    global.msg[2]= "My whole life, I\\'ve&never been worth a&lot of EXP./";
    global.msg[3]= "Everyone else at my&work, in my classes,/";
    global.msg[4]= "Would raise a&person\\'s LV by 4&or 5 when&destroyed.../";
    global.msg[5]= "\\\\E1But me?/";
    global.msg[6]= "\\\\E6I wouldn\\'t even&increase your LV&at LV 1./";
    global.msg[7]= "\\\\E4For this reason...&I...&I\\'ve always been.../";
    global.msg[8]= "I\\'ve never been&very good at&getting killed.&So.../";
    global.msg[9]= "\\\\E3I\\'m flattered&that you...&Want to destroy me./";
    global.msg[10]= "\\\\E8But you are making&a big waste of&your time!!/";
    global.msg[11]= "\\\\E8Stop killing me!!!/%%";
}
if(hitplot == 6) {
    global.msg[0]= "\\\\E2OK, OK. Hm./";
    global.msg[1]= ".../";
    global.msg[2]= "\\\\E7If you stop killing&me, I\\'ll pay you&200G./%%";
}
if(hitplot == 7) global.msg[0]= "\\\\E8220G?/%%";
if(hitplot == 8) {
    global.msg[0]= "\\\\E9.../";
    global.msg[1]= "\\\\E8300G?/%%";
}
if(hitplot == 9) {
    global.msg[0]= "\\\\E1W..^1.&Wait a second./";
    global.msg[1]= "\\\\E1You trying to&kill me...&C...&could it be...?/";
    global.msg[2]= "\\\\E6Because you&don\\'t like me&very much...?/";
    global.msg[3]= "\\\\E2No, no, that&can\\'t be!/";
    global.msg[4]= "This is just a&friendly, um,&killing between&acquaintances!!!/";
    global.msg[5]= "\\\\E8Pals... we\\'re...&we\\'re still pals,&right!!/";
    global.msg[6]= "\\\\E1OK, maybe not&PALS, but, uh,/";
    global.msg[7]= "\\\\E2Friendly strangers?/";
    global.msg[8]= "\\\\E8You know, just&one step away from&being buds!!!/";
    global.msg[9]= "\\\\E0I mean, I was&practically.../";
    global.msg[10]= "\\\\E0I was about to&crack open the&sparkling cider!/";
    global.msg[11]= "\\\\E2Pull out some&baguettes and some&swiss cheese!/";
    global.msg[12]= "\\\\E8BLOW ON A FREAKING&PARTY HORN!!!/%%";
}
if(hitplot == 10) {
    global.msg[0]= "\\\\E1N... no, you don\\'t&like me either,&huh...?/";
    global.msg[1]= "\\\\E4Nobody likes me...&they\\'re just putting&up with me/";
    global.msg[2]= "\\\\E6I\\'m just annoying&you... I should just&leave/";
    global.msg[3]= "\\\\E1ARRRRRGHHHH!!!&Why am I such an&idiot??!?!!!!/";
    global.msg[4]= "How did I not&see it before!!!/";
    global.msg[5]= "\\\\E1You weren\\'t killing&me because you&LIKED me!!!/";
    global.msg[6]= "\\\\E6NOBODY does that!/";
    global.msg[7]= " That\\'s NOT a thing!/%%";
}
if(hitplot == 11) {
    // obj_dmgwriter
    with(189) instance_destroy();
    global.msg[0]= "\\\\E2Oh. Sorry. I was&being too loud.&Ugh./";
    global.msg[1]= "\\\\E4I\\'m wasting your&time, aren\\'t I...?/";
    global.msg[2]= "\\\\E9.../";
    global.msg[3]= "\\\\E1... whew, I feel&really...&strange./";
    global.msg[4]= "\\\\E2I think I need to&go home and lie&down./%%";
    d_con= 1;
}
if(goodot == 1) {
    if(myplot == 1) {
        global.msg[0]= "\\\\E1Oh, I\\'m so sorry!&How clumsy of me...&I\\'ve bumped into you/";
        global.msg[1]= "\\\\E6I\\'m such a klutz./";
        global.msg[2]= "I was just here to&find something to&draw, and.../";
        global.msg[3]= "\\\\E2Oh no, it\\'s ok!&It\\'s OK!/";
        global.msg[4]= "\\\\E0I\\'ll give you a&gift to make up&for your troubles./";
        global.msg[5]= "\\\\E0Let me look in&my vest!/%%";
    }
    if(myplot == 2) {
        global.msg[0]= "\\\\E6Ummm, I couldn\\'t&find anything I&want to give away./";
        global.msg[1]= "\\\\E2Wait, wait!/";
        global.msg[2]= "\\\\M4I\\'ve got my notebook!/";
        global.msg[3]= "\\\\E0I can draw you a&picture in it!/";
        global.msg[4]= "\\\\E7I\\'m quite the artist,&you know./";
        global.msg[5]= "\\\\E8I\\'ll draw you a&GREAT picture!!!/%%";
    }
    if(myplot == 3) {
        global.flag[20]= 0;
        global.msg[0]= "\\\\E6S.. sorry...&The drawing didn\\'t&come out very well./";
        global.msg[1]= "\\\\E2Wait^1!&I know the problem!/";
        global.msg[2]= "\\\\M0I just have to&find a better piece&of paper for it!/%%";
    }
    if(myplot == 4) {
        global.msg[0]= "\\\\E6None of my papers&are good enough to&use.../";
        global.msg[1]= "\\\\E2IT\\'S OK!!!/";
        global.msg[2]= "\\\\E8I know what I&can do!^1!&I\\'ll use my magic&pencil!/";
        global.msg[3]= "\\\\E0It has to be under&some of these papers&somewhere!!!!/%%";
    }
    if(myplot == 5 && p_mode == 1) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E1AHHHHH!!!/%%";
    }
    if(myplot == 5 && p_mode == 0) {
        global.msg[0]= "\\\\M5H\\\\E8ere!&I got it!/";
        global.msg[1]= "My magic pencil is&amazing!/";
        global.msg[2]= "\\\\E2Everything I draw&with it looks.../";
        global.msg[3]= "\\\\E8COMPLETELY REAL!/%%";
        p_con= 1;
        p_mode= 1;
    }
    if(myplot == 6) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E1I\\'ve messed up.&I\\'ve really messed up.&Oh no./";
        global.msg[1]= "\\\\E2I\\'ll just use a&regular pencil!&I\\'ll try my best!/%%";
    }
    if(myplot == 7) {
        mercymod= 222;
        global.flag[20]= 3;
        global.msg[0]= "\\\\E8Are you ready!?/";
        global.msg[1]= "\\\\E0I just finished./";
        global.msg[2]= "\\\\M6Here\\'s your picture!&What do you think!?/";
        global.msg[3]= "\\\\E2It\\'s a representation&of your deepest&essence.../";
        global.msg[4]= "\\\\E7It\\'s great^1, right!?/";
        global.msg[5]= ".../";
        global.msg[6]= "\\\\E8(They think my art&is terrible.)/";
        global.msg[7]= "\\\\M0Well!/";
        global.msg[8]= "\\\\E2I\\'ll leave you with&that thought!/";
        global.msg[9]= "\\\\E7Goodbye!/";
        global.msg[10]= "\\\\E8See you later!/";
        global.msg[11]= "\\\\E2Sayonara!/";
        global.msg[12]= "\\\\E1Nice knowing ya!/";
        global.msg[13]= "\\\\E7Hasta la vista./";
        global.msg[14]= "\\\\E9.../";
        global.msg[15]= "\\\\E2I should leave./%%";
        n_con= 1;
    }
}
global.typer= 111;
scr_blcon_x(x + 190, y + 20);
blcon.depth= -1500;
writer.depth= -1600;
global.border= 17;
if(p_mode == 0 && (myplot == 0 || myplot == 1 || myplot == 2 || myplot >= 5))
    global.border= 52;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
talked= 2;

