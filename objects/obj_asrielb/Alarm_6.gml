blcon= instance_create(x + 120, y, obj_blconwdflowey );
gg= floor(random(3));
mycommand= round(random(100));
if(turns == 1) {
    global.msg[0]= "\\\\E1You know.../";
    global.msg[1]= "\\\\M1I \\\\E0don\\'t care about&destroying this&world anymore./%%";
}
if(turns == 2) {
    global.msg[0]= "\\\\E1After I defeat you&and gain total&control over the&timeline.../";
    global.msg[1]= "\\\\E2I just want to reset&everything./%%";
}
if(turns == 3) {
    global.msg[0]= "\\\\E3All your progress..^1.&Everyone\\'s memories./";
    global.msg[1]= "\\\\E2I\\'ll bring them all&back to zero!/%%";
}
if(turns == 4)
    global.msg[0]= "\\\\E2Then we can do&everything ALL over&again./%%";
if(turns == 5) {
    global.msg[0]= "\\\\E3And you know what&the best part of&all this is?/";
    global.msg[1]= "\\\\E2You\\'ll DO it./%%";
}
if(turns == 6)
    global.msg[0]= "\\\\E1And then you\\'ll&lose to me again./%%";
if(turns == 7) global.msg[0]= "\\\\E3And again./%%";
if(turns == 8) global.msg[0]= "\\\\E3And again!!!/%%";
if(turns == 9)
    global.msg[0]= "\\\\E1Because you want a&" + chr(ord("\"")) + "happy ending." + chr(ord("\"")) + "/%%";
if(turns == 10)
    global.msg[0]= "Because you " + chr(ord("\"")) + "love&your friends." + chr(ord("\"")) + "/%%";
if(turns == 11) global.msg[0]= "Because you " + chr(ord("\"")) + "never&give up." + chr(ord("\"")) + "/%%";
if(turns == 12) {
    global.msg[0]= "\\\\M1I\\\\E1sn\\'t that&delicious?/";
    global.msg[1]= "\\\\M0Your " + chr(ord("\"")) + "determination.^1" + chr(ord("\"")) + "&The power that let&you get this far.../";
    global.msg[2]= "\\\\E2It\\'s gonna be your&downfall!/%%";
}
if(turns == 13) {
    global.msg[0]= "\\\\E2Now^1, ENOUGH messing&around!/";
    global.msg[1]= "It\\'s time to purge&this timeline once&and for all!/%%";
}
xx= 0;
if(turns < global.flag[504]) xx= 1;
global.typer= 86;
blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
if(mypart1.specialnormal == 1 || turns == 0 || xx == 1) {
    with(blconwd) instance_destroy();
    with(blcon) instance_destroy();
}
global.border= 17;
if(mypart1.specialnormal == 1) global.border= 6;
if(turns == 2 || turns == 6 || turns == 10)
    global.border= 4;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
say= 1;


/*  */
