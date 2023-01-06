myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(type == 0) {
    global.msg[0]= "* (It\\'s some kind of switch.^1)&* (There\\'s a red-colored&  slot in the center.)/%%";
    if(global.flag[481] == 3)
        global.msg[0]= "* (The red switch has been&  turned on.)/%%";
    if(global.flag[481] == 2) {
        global.flag[481]= 3;
        red= 1;
        snd_play(snd_noise );
        global.msg[0]= "* (Click!^1)&* (The red key fits perfectly&  into the slot.)/%%";
    }
}
if(type == 1) {
    global.msg[0]= "* (It\\'s some kind of switch.^1)&* (There\\'s a blue-colored&  slot in the center.)/%%";
    if(global.flag[482] == 3)
        global.msg[0]= "* (The blue switch has been&  turned on.)/%%";
    if(global.flag[482] == 2) {
        global.flag[482]= 3;
        blu= 1;
        snd_play(snd_noise );
        global.msg[0]= "* (Click!^1)&* (The blue key fits perfectly&  into the slot.)/%%";
    }
}
if(type == 2) {
    global.msg[0]= "* (It\\'s some kind of switch.^1)&* (There\\'s a green-colored&  slot in the center.)/%%";
    if(global.flag[483] == 3)
        global.msg[0]= "* (The green switch has been&  turned on.)/%%";
    if(global.flag[483] == 2) {
        global.flag[483]= 3;
        gre= 1;
        snd_play(snd_noise );
        global.msg[0]= "* (Click!^1)&* (The green key fits perfectly&  into the slot.)/%%";
    }
}
if(type == 3) {
    global.msg[0]= "* (It\\'s some kind of switch.^1)&* (There\\'s a yellow-colored&  slot in the center.)/%%";
    if(global.flag[484] == 3)
        global.msg[0]= "* (The yellow switch has been&  turned on.)/%%";
    if(global.flag[484] == 2) {
        global.flag[484]= 3;
        yel= 1;
        snd_play(snd_noise );
        global.msg[0]= "* (Click!^1)&* (The yellow key fits perfectly&  into the slot.)/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
