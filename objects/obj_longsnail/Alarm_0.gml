myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Snail snail..^1.&* (A long journey extends&  in front of you...)/";
global.msg[1]= "* Snail snail..^1.&* (Reach far and stretch&  beyond the horizons.)/";
global.msg[2]= "* Snail snail^1.&* (So snaileth Sam Byool.)/%%";
if(talkedto > 0) {
    global.msg[0]= "* Snail snail./";
    global.msg[1]= "* (Good gosh^1, don\\'t I look&  like a perfectly normal&  snail?)/%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Snail snail^1.&* (You reached the end of&  your extensive journey.)/";
    global.msg[1]= "* Snail snail^1.&* (What a long trip^1! Remember&  to stretch your muscles.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
