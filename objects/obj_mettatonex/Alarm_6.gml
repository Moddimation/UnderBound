global.msc= 0;
// OBJ_WRITER
with(782) instance_destroy();
turns++;
textsize= 0;
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= ".../%%";
if(turns == 1) {
    textsize= 0;
    global.msg[0]= "Lights!&Camera!&Action!/%%";
}
if(turns == 2) {
    textsize= 0;
    global.msg[0]= "Drama!&Romance!&Blood-&shed!/%%";
}
if(turns == 3) {
    textsize= 0;
    global.msg[0]= "I\\'m the&idol&everyone&craves!/%%";
}
if(turns == 4) {
    textsize= 0;
    global.msg[0]= "Smile&for the&camera!/%%";
}
if(turns == 5) {
    textsize= 1;
    global.msg[0]= "Oooh, it\\'s time&for a pop quiz!/";
    global.msg[1]= "I hope you brought&a keyboard.../";
    global.msg[2]= "This one\\'s an&essay question!/%%";
}
if(turns == 6) {
    textsize= 1;
    global.msg[0]= "Your essay really&showed everyone&your heart./";
    global.msg[1]= "Why don\\'t I show&you mine?/%%";
    obj_mettb_body.dancewait= 20;
}
if(turns == 7) {
    obj_mettb_body.dancewait= 18;
    textsize= 0;
    global.msg[0]= "Ooooh,&I\\'m just&warming&up!/%%";
}
if(turns == 8) {
    textsize= 1;
    global.msg[0]= "But how are you&on the dance floor!?/%%";
    obj_mettb_body.dancewait= 15;
}
if(turns == 9) {
    textsize= 0;
    global.msg[0]= "Can you&keep up&the&pace!?/%%";
    obj_mettb_body.dancewait= 12;
}
if(turns == 10) {
    global.msg[0]= "Lights!&Camera&Bombs!/%%";
    obj_mettb_body.dancewait= 9;
}
if(turns == 11) {
    global.msg[0]= "Things&are&blowing&up!/%%";
    obj_mettb_body.dancewait= 6;
}
if(turns == 12) {
    obj_mettb_body.dancewait= 3;
    textsize= 1;
    global.msg[0]= "Time for our union-&regulated break!/%%";
}
if(turns == 13) {
    obj_mettb_body.dancewait= 60;
    textsize= 1;
    global.msg[0]= "We\\'ve grown so&distant, darling.../";
    global.msg[1]= "How about another&heart-to-heart?/%%";
}
if(turns == 14) {
    textsize= 1;
    obj_mettb_body.dancewait= 80;
    obj_mettb_body.face_set= 1;
    global.faceemotion= 8;
    global.msg[0]= "A.. arms?&Wh... who needs arms&with legs like&these?/";
    global.msg[1]= "I\\'m still going&to win!/%%";
}
if(turns == 15) {
    obj_mettb_body.face_set= 1;
    global.faceemotion= 8;
    textsize= 0;
    obj_mettb_body.dancewait= 120;
    global.msg[0]= "Come on&...!/%%";
}
if(turns == 16) {
    obj_mettb_body.face_set= 1;
    global.faceemotion= 8;
    obj_mettb_body.dancewait= 180;
    global.msg[0]= "The show&...&must go&on!/%%";
}
if(turns == 17) {
    obj_mettb_body.face_set= 1;
    global.faceemotion= 8;
    obj_mettb_body.dancewait= 240;
    global.msg[0]= "Dr...&Drama!&A...&Action!/%%";
}
if(turns == 18) {
    textsize= 1;
    obj_mettb_body.dance= -1;
    obj_mettb_body.face_set= 1;
    global.faceemotion= 5;
    global.msg[0]= "\\\\E5L... lights...&C... camera.../";
    global.msg[1]= "Enough of this!&Do you really want&humanity to perish!?/";
    global.msg[2]= "\\\\E7... or do you just&believe in yourself&that much?/%%";
}
if(turns == 19) {
    textsize= 1;
    obj_mettb_body.face_set= 1;
    global.faceemotion= 5;
    obj_mettb_body.dance= -1;
    global.msg[0]= "Haha, how inspiring!/";
    global.msg[1]= "Well, darling!&It\\'s either me&or you!/";
    global.msg[2]= "\\\\E4But I think we both&already know who\\'s&going to win./";
    global.msg[3]= "\\\\E8Witness the true&power of humanity\\'s&star!/%%";
}
if(turns == 20) {
    textsize= 1;
    obj_mettb_body.face_set= 1;
    global.faceemotion= 7;
    obj_mettb_body.dance= -1;
    global.msg[0]= "... then.../";
    global.msg[1]= "\\\\E8Are YOU the star?/";
    global.msg[2]= "Can you really&protect humanity!?/%%";
}
global.typer= 51;
if(textsize == 0) {
    blcon= instance_create(x + 200, y, obj_blconsm );
    blconwd= instance_create(blcon.x + 10, blcon.y - 10, OBJ_NOMSCWRITER );
} else  {
    blcon= instance_create(x + 200, y, obj_blconwdflowey );
    blconwd= instance_create(blcon.x + 20, blcon.y - 10, OBJ_NOMSCWRITER );
}
global.border= 24;
if(turns == 14 || turns == 15 || turns == 23)
    global.border= 27;
if(turns == 10 || turns == 11 || turns == 18 || turns == 24)
    global.border= 26;
if(turns == 6) {
    with(mypart1) event_user(1);
}
if(turns == 13) {
    with(mypart1) event_user(1);
}
if(turns == 19) {
    with(mypart1) event_user(1);
}
if(turns == 20) {
    with(mypart1) event_user(1);
}
if(turns == 25) {
    with(mypart1) event_user(1);
}
if(turns == 5) global.border= 0;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
talked= 2;

/* */
/*  */
