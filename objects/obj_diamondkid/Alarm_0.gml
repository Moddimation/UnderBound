myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "\\\\W* My fave Mettaton Moment(TM)^1?&* Right \\\\Ywhen everything looks the&  baddest^1, he poses dramatically\\\\W./";
global.msg[1]= "* Like when he\\'s on a cooking&  show and the eggs don\\'t turn&  out right./%%";
if(talkedto > 0) {
    global.msg[0]= "* But^1!&* Then he says!/";
    global.msg[1]= "\\\\W* Even if you suck at cooking^1,&  you can always \\\\Ybuy an&  MTT-brand Glamburger\\\\W!/";
    global.msg[2]= "\\\\W* Then he \\\\Yeats one^1!\\\\W &* Everyone loves it!/";
    global.msg[3]= "* ... How does he eat it&  without a mouth?/";
    global.msg[4]= "* Uhhh... well..^1.&* Watch the show!/%%";
}
if(global.flag[425] == 1) {
    global.msg[0]= "* That finale was really..^1.&* That was really sad!/";
    global.msg[1]= "* And Mettaton\\'s schedule&  doesn\\'t show any other&  shows.../%%";
}
if(global.flag[7] == 1)
    global.msg[0]= "* I\\'ve been thinking about&  getting a sick skateboard./%%";
if(x > 160) {
    global.msg[0]= "\\\\W* My fave Mettaton Moment(TM)&  is when he beats up the&  \\\\Yheel-turning villains\\\\W!/";
    global.msg[1]= "* Even if it\\'s during what\\'s&  supposed to be a quiz show./%%";
    if(talkedto > 0) {
        global.msg[0]= "* Oh^1! And I like when he tries&  on all kinds of different&  fashionable outfits!/";
        global.msg[1]= "* Even if it\\'s during what\\'s&  supposed to be a newscast./%%";
    }
    if(global.flag[425] == 1) {
        global.msg[0]= "* Did Mettaton retire...?/";
        global.msg[1]= "* Can\\'t he unretire...?/%%";
    }
    if(global.flag[7] == 1) {
        global.msg[0]= "* On the surface we\\'ll be able&  to watch all kinds of TV.../";
        global.msg[1]= "* But^1, I bet none of those&  shows are as good as&  Mettaton\\'s!/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
