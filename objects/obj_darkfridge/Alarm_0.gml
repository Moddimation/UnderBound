myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s a refrigerator.^1)&* (It\\'s empty.)/%%";
if(x > 242) {
    global.msg[0]= "* (It\\'s a refrigerator.^1)&* (It seems to contain&  samples of some kind.)/%%";
    if(global.flag[490] == 0)
        global.msg[0]= "* There\\'s something here..^1.&* It feels like it\\'s&  breathing./%%";
}
if(x > 340) {
    global.msg[0]= "* (It\\'s a refrigerator.^1)&* (It\\'s empty.)/%%";
    if(global.flag[490] == 0)
        global.msg[0]= "* There\\'s something here..^1.&* It feels like a tree^1, ripe&  with delicious fruit./%%";
}
if(x > 440) {
    global.msg[0]= "* (It\\'s a refrigerator.^1)&* (It seems to contain&  samples of some kind.)/%%";
    if(global.flag[490] == 0)
        global.msg[0]= "* There\\'s something here..^1.&* Something in the shape&  of a man./%%";
}
if(x > 530) {
    global.msg[0]= "* (It\\'s a refrigerator.^1)&* (It\\'s empty.)/%%";
    if(global.flag[490] == 0)
        global.msg[0]= "* There\\'s something here..^1.&* It feels warm^1, and moist./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
