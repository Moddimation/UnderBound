instance_create(146, 260, obj_toroverworld1 );
global.msc= 201;
global.typer= 4;
global.interact= 1;
global.facechoice= 1;
conversation= 3;
if(faketor == 1) {
    global.msc= 0;
    global.msg[0]= "\\\\E1* Hello..^1.&* Are you all right?/";
    global.msg[1]= "* You must be so lost&  and confused.../";
    global.msg[2]= "\\\\E2* Ah, do not be&  afraid^1, my child./";
    global.msg[3]= "\\\\W* I am \\\\BTORIEL\\\\W,&  caretaker of the&  \\\\RRUINS\\\\W./";
    global.msg[4]= "* I pass through here&  every day to see if&  anyone has fallen down./";
    global.msg[5]= "* You are the first&  human to come here&  in a long time./";
    global.msg[6]= "* I will do my best&  to protect you during&  your time here./";
    global.msg[7]= "* Come^1!&* I shall guide you&  through the catacombs./%%";
    with(temptor) instance_destroy();
}
instance_create(0, 0, obj_dialoguer );


/*  */
