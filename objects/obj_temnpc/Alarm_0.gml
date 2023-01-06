myinteract= 3;
global.msc= 0;
global.typer= 28;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* hOI!^1!&* im temmie!!!/";
global.msg[1]= "* and dis is my friend..^1.&* temmie!!!/%%";
if(global.flag[7] == 1)
    global.msg[0]= "* woa..^1. tem hear news..^1.&* VERY GOODS!!!/%%";
if(x > 190) {
    global.msg[0]= "* hOI!^1!&* im temmie!!!/";
    global.msg[1]= "* don forget my friend!/%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* yaYA!!^1!&* tems can go free!!/%%";
}
if(x > 220) {
    global.msg[0]= "* Hi./";
    global.msg[1]= "* I\\'m Bob./%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* A pleasing development^1, no?/%%";
}
if(x > 360) {
    global.msg[0]= "* awawawawah!!/";
    global.msg[1]= "* humans..^1.&* such a.../";
    global.msg[2]= "* CUTE!!!!/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* woa..^1.&* if tems can go on surface^1,&  can see,/";
        global.msg[1]= "* LOT OF CUTES HUNAN!!!/%%";
    }
}
if(x > 440) {
    global.msg[0]= "* tem..^1. WATCH EGG!!!/";
    global.msg[1]= "* eg..^1. wil HATCH!!!/";
    global.msg[2]= "* tem..^1. PROUD PARENT!!/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* everyones go free..^1.&* BUT TEM!!!/";
        global.msg[1]= "* TEM NOT LEAV!!!&* TEM WATCH EG!!!/";
        global.msg[2]= "* tem will be happily fambily,/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
